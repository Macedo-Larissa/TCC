<?php
// Código PHP para conexão com o banco de dados e busca de imagem

$host = "aws.connect.psdb.cloud";
$username = "wgbxmwizptxq4hj27jnc";
$password = "pscale_pw_nF3AXj95yS4LMUW1ThaZTAGBkYMkZMdVXEFlngWFaM7";
$database = "teste";

$conexao = new mysqli($host, $username, $password, $database);



// Processar a busca
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $termo_de_busca = $_POST["nome_imagem"];

    // Mensagem de depuração para verificar o termo de busca
    echo "Termo de Busca: $termo_de_busca <br>";

    // Consulta para buscar imagens com base no nome
    $consulta = "SELECT * FROM TbTeste WHERE NomeImagem LIKE '%$termo_de_busca%'";
    echo "Consulta SQL: $consulta <br>";

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
