<!DOCTYPE html>
<html style="font-size: 16px;" lang="pt">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <title>Resultado</title>
  <link rel="icon" type="image/png" href="images/icons8-matemtica-96.png">
  <link rel="stylesheet" href="nicepage.css" media="screen">
  <link rel="stylesheet" href="busca.css" media="screen">
  <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
  <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
  <meta name="generator" content="Nicepage 5.21.10, nicepage.com">
  <meta name="theme-color" content="#478ac9">
  <meta property="og:title" content="Página 1">
  <meta property="og:description" content="">
  <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>

<body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="pt">
  <header class="u-clearfix u-custom-color-2 u-header u-header" id="sec-2083">
    <div
      class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-sheet-1">
      <p class="u-text u-text-1">
        <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-custom-color-1 u-btn-1"
          data-href="Pagina-inicial.html">Mathematical Search</a>
      </p>
      <a href="Pagina-inicial.html" class="u-image u-logo u-image-1" data-image-width="150" data-image-height="150"
        title="Pagina inicial">
        <img src="images/icons8-matemtica-96.png" class="u-logo-image u-logo-image-1">
      </a>
      <nav class="u-menu u-menu-one-level u-menu-open-right u-offcanvas u-menu-1">
        <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
          <a class="u-button-style u-custom-border-radius u-custom-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-custom-color-1 u-text-hover-palette-2-base"
            href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-bbb9"></use>
              </svg>
              <svg class="u-svg-content" version="1.1" id="svg-bbb9" viewBox="0 0 16 16" x="0px" y="0px"
                xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                <g>
                  <rect y="1" width="16" height="2"></rect>
                  <rect y="7" width="16" height="2"></rect>
                  <rect y="13" width="16" height="2"></rect>
                </g>  
              </svg>
          </a>
        </div>
        <div class="u-custom-menu u-nav-container">
          <ul class="u-nav u-spacing-41 u-unstyled u-nav-1">
            <li class="u-nav-item"><a
                class="u-button-style u-custom-color-4 u-nav-link u-radius-50 u-text-custom-color-1"
                href="Pagina-inicial.html" style="padding: 10px 20px;">Página Inicial</a>
            </li>
            <li class="u-nav-item"><a
                class="u-button-style u-custom-color-4 u-nav-link u-radius-50 u-text-custom-color-1" href="Sobre.html"
                style="padding: 10px 20px;">Sobre</a>
            </li>
          </ul>
        </div>
        <div class="u-custom-menu u-nav-container-collapse">
          <div class="u-container-style u-custom-color-4 u-inner-container-layout u-sidenav">
            <div class="u-inner-container-layout u-sidenav-overflow">
              <div class="u-menu-close u-menu-close-1"></div>
              <ul class="u-align-center u-custom-font u-nav u-popupmenu-items u-text-font u-unstyled u-nav-2">
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Pagina-inicial.html">Página
                    Inicial</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Sobre.html">Sobre</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="u-black u-menu-overlay u-opacity u-opacity-75"></div>
        </div>
      </nav>
    </div>
  </header>
  <section class="u-clearfix u-container-align-center u-section-1" id="sec-f672">
    <div class="u-clearfix u-sheet u-sheet-1">
      <div class="u-custom-php u-custom-php-1">

      <?php
      $host = "localhost";
      $username = "root";
      $password = "";
      $database = "mathsearch";

      $conexao = new mysqli($host, $username, $password, $database);

      if ($_SERVER["REQUEST_METHOD"] == "POST") {
          $termo_de_busca = $_POST["nome_imagem"];

          $consulta = "SELECT * FROM imagens WHERE NomeImagem LIKE '%$termo_de_busca%'";

          $resultado = $conexao->query($consulta);

          if ($resultado === false) {
              echo "Erro na consulta: " . $conexao->error;
          }

          if ($resultado->num_rows > 0) {
              while ($imagem = $resultado->fetch_assoc()) {
                  echo "<h2>{$imagem['NomeImagem']}</h2>";
                  echo "<img src='{$imagem['CaminhoImagem']}' alt='{$imagem['NomeImagem']}'>";
                  echo "<hr>";
              }
          } else {
              echo "<p class='not-found'>Nenhuma imagem encontrada para '$termo_de_busca'.</p>";
          }
      }

      $conexao->close();
    ?>
    </div>
    </div>
  </section>
  <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-2 u-footer"
    id="sec-c94e">
    <div class="u-clearfix u-sheet u-sheet-1">
      <p class="u-align-center u-small-text u-text u-text-variant u-text-1">2023<br>Site com fins educativos
      </p>
      <a href="Sugestão.html"
        class="u-active-none u-border-1 u-border-hover-white u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-hover-none u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-1">SUGIRA
        AQUI!</a>
    </div>
  </footer>
</body>

</html>