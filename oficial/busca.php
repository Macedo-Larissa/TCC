<?php
// Código PHP para conexão com o banco de dados e busca de imagem

$DB_HOST="aws.connect.psdb.cloud";
$DB_USERNAME="61y21dm8p7wyu2l1pzaw";
$DB_PASSWORD="pscale_pw_mD13TpkLc2fPSS9KuS8OeN0a0VrE5lVC0low1d0aooP";
$DB_NAME="teste";

//$conexao = new mysqli($host, $username, $password, $database);

$mysqli = mysqli_init();
  $mysqli->ssl_set(NULL, NULL, "/etc/ssl/certs/ca-certificates.crt", NULL, NULL);
  $conexao = $mysqli->real_connect($DB_HOST, $DB_USERNAME, $DB_PASSWORD, $DB_NAME);
  //$mysqli->close();

// Processar a busca
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $termo_de_busca = $_POST["nome_imagem"];

    // Mensagem de depuração para verificar o termo de busca
    //echo "Termo de Busca: $termo_de_busca <br>";

    // Consulta para buscar imagens com base no nome
    $consulta = "SELECT * FROM TbTeste"; // WHERE NomeImagem LIKE '%$termo_de_busca%'";
    //echo "Consulta SQL: $consulta <br>";

    $resultado = $conexao->query($consulta);

    if ($resultado === false) {
        echo "Erro na consulta: " . $conexao->error;
    }

    if ($resultado->num_rows > 0) {
        while ($imagem = $resultado->fetch_assoc()) {
            echo "<h2>{$imagem['NomeImagem']}</h2>";
            echo "<img src='{$imagem['CaminhoImagem']}' alt='{$imagem['NomeImagem']}' style='max-width: 300px;'>";
            echo "<hr>"; // Adicione uma linha horizontal entre os resultados
        }
    } else {
        echo "Nenhuma imagem encontrada para '$termo_de_busca'.";
    }
}

$conexao->close();
?>
