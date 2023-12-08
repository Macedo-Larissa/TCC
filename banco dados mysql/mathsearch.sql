-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/12/2023 às 05:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mathsearch`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(255) NOT NULL,
  `NomeImagem` varchar(300) NOT NULL,
  `CaminhoImagem` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imagens`
--

INSERT INTO `imagens` (`id`, `NomeImagem`, `CaminhoImagem`) VALUES
(1, 'Números primos e números compostos', 'images\\numeros_primos_e_numeros_compostos.png'),
(2, 'Números pares e números ímpares', 'images\\numeros_pares_e_numeros_impares.png'),
(3, 'Operações Inversas', 'images\\operacoes_inversas.png'),
(4, 'Jogos de Sinais: Multiplicação e Divisão', 'images\\jogos_de_sinais_multiplicacao_e_divisao.png'),
(5, 'Jogos de Sinais: Adição e Subtração', 'images\\jogos_de_sinais_adicao_e_subtracao.png'),
(6, 'Estrutura da Divisão', 'images\\estrutura_da_divisao.png'),
(7, 'Estrutura da Potenciação', 'images\\estrutura_da_potenciacao.png'),
(8, 'Expoente Negativo', 'images\\expoente_negativo.png'),
(9, 'Potência de Potência', 'images\\potencia_de_potencia.png'),
(10, 'Multiplicação de Potência da Mesma Base', 'images\\multiplicacao_de_potencia_da_mesma_base.png'),
(11, 'Divisão de Potência da Mesma Base', 'images\\divisao_de_potencia_da_mesma_base.png'),
(12, 'Potência com Expoente Fracionário', 'images\\potencia_com_expoente_fracionario.png'),
(14, 'Potência de Quociente', 'images\\potencia_de_quociente.png'),
(15, 'Potência de Quociente e Expoente Negativo', 'images\\potencia_de_quociente_e_expoente_negativo.png'),
(16, 'Potência com Expoente Igual a 1 e Potência com Expoente Igual a 0', 'images\\potencia_com_expoente_igual_a_1_e_potencia_com_expoente_igual_a_0.png'),
(17, 'Estrutura da Radiciação', 'images\\estrutura_de_radiciacao.png'),
(18, 'Expoente do Radicando Igual ao Índice', 'images\\expoente_de_radicando_igual_ao_indice.png'),
(19, 'Produto de Raízes de Índices Iguais', 'images\\produto_de_raizes_de_indices_iguais.png'),
(20, 'Quociente de Raízes de Índices Iguais', 'images\\quociente_de_raizes_de_indices_iguais.png'),
(21, 'Potência de Raiz', 'images\\potencia_de_raiz.png'),
(22, 'Raiz de Raiz', 'images\\raiz_de_raiz.png'),
(23, 'Estrutura do Logaritmo', 'images\\estrutura_de_logaritmo.png'),
(24, 'Área do Quadrado', 'images\\area_do_quadrado.png'),
(25, 'Área do Retângulo', 'images\\area_do_retangulo.png'),
(26, 'Área do Triângulo', 'images\\area_do_triangulo.png'),
(27, 'Área do Triângulo Equilátero', 'images\\area_do_triangulo_equilatero.png'),
(28, 'Área do Losango', 'images\\area_do_losango.png'),
(29, 'Área do Trapézio', 'images\\area_do_trapezio.png'),
(30, 'Área do Círculo', 'images\\area_do_circulo.png'),
(31, 'Comprimento da Circunferência', 'images\\comprimento_da_circunferencia.png'),
(32, 'Área do Setor Circular pelo Ângulo', 'images\\area_do_setor_circular_pelo_angulo.png'),
(33, 'Área do Setor Circular pelo Arco', 'images\\area_do_setor_circular_pelo_arco.png'),
(34, 'Área da Coroa Circular', 'images\\area_da_coroa_circular.png'),
(35, 'Potência de Produto', 'images\\porencia_de_produto.png'),
(36, 'Área do Paralelogramo', 'images\\area_do_paralelogramo.png'),
(37, 'Área do Cilindro', 'images\\area_do_cilindro.png'),
(38, 'Área do Cubo', 'images\\area_do_cubo.png'),
(39, 'Área do Paralelepípedo', 'images\\area_do_paralelepipedo.png'),
(40, 'Área da Esfera', 'images\\area_da_esfera.png'),
(41, 'Volume do Cubo', 'images\\volume_do_cubo.png'),
(42, 'Área do Cone', 'images\\area_do_cone.png'),
(43, 'Volume do Cone', 'images\\volume_do_cone.png'),
(44, 'Volume do Tronco de Cone', 'images\\volume_do_tronco_de_cone.png'),
(45, 'Geratriz do Tronco de Cone', 'images\\geratriz_do_tronco_de_cone.png'),
(46, 'Área do Tronco de Cone', 'images\\area_do_tronco_de_cone.png'),
(47, 'Volume do Cilindro', 'images\\volume_do_cilindro.png'),
(48, 'Volume do Paralelepípedo', 'images\\volume_do_paralelepipedo.png'),
(49, 'Volume da Esfera', 'images\\volume_da_esfera.png'),
(50, 'Volume da Pirâmide de Base Triangular', 'images\\volume_da_piramide_de_base_triangular.png'),
(51, 'Volume da Pirâmide Quadrada', 'images\\volume_da_piramide_quadrada.png'),
(52, 'Volume da Pirâmide Hexagonal', 'images\\volume_da_piramide_hexagonal.png'),
(53, 'Conversão de Medidas de Comprimento', 'images\\conversao_de_medidas_de_comprimento.png'),
(54, 'Conversão de Medidas de Área', 'images\\conversao_de_medidas_de_area.png'),
(55, 'Conversão de Medidas de Volume', 'images\\conversao_de_medidas_de_volume.png'),
(56, 'Conversão de Medidas de Capacidade', 'images\\conversao_de_medidas_de_capacidade.png'),
(57, 'Conversão de Medidas de Massa', 'images\\conversao_de_medidas_de_massa.png'),
(58, 'Conversão de Medidas de Tempo', 'images\\conversao_de_medidas_de_tempo.png'),
(59, 'Equivalências: Volume e Capacidade', 'images\\equivalencias_volume_e_capacidade.png'),
(60, 'Relação de Euler', 'images\\relacao_de_euler.png'),
(61, ' Perímetro', 'images\\perimetro.png'),
(62, 'Teorema de Pitágoras', 'images\\teorema_de_pitagoras.png'),
(63, 'Seno', 'images\\seno.png'),
(64, 'Cosseno', 'images\\cosseno.png'),
(65, 'Tangente', 'images\\tangente.png'),
(66, 'Reta', 'images\\reta.png'),
(67, 'Semirreta', 'images\\semirreta.png'),
(68, 'Segmento de Reta', 'images\\segmento_de_reta.png'),
(69, 'Teorema de Tales', 'images\\teorema_de_tales.png'),
(70, 'Número de Diagonais de um Polígono', 'images\\numero_de_diagonais_de_um_poligono.png'),
(71, 'Diagonal do Quadrado', 'images\\diagonal_do_quadrado.png'),
(72, 'Soma dos Ângulos Externos de um Polígono', 'images\\soma_dos_angulos_externos_de_um_poligono.png'),
(73, 'Soma dos Ângulos Internos de um Polígono', 'images\\soma_dos_angulos_internos_de_um_poligono.png'),
(74, 'Ângulo Interno de um Polígono Regular', 'images\\angulo_interno_de_um_poligono_regular.png'),
(75, 'Ângulo Externo de um Polígono Regular', 'images\\angulo_externo_de_um_poligono_regular.png'),
(76, 'Ângulo Central de um Polígono Regular', 'images\\angulo_central_de_um_poligono_regular.png'),
(77, 'Baricentro', 'images\\baricentro.png'),
(78, 'Incentro', 'images\\incentro.png'),
(79, 'Ortocentro', 'images\\ortocentro.png'),
(80, 'Circuncentro', 'images\\circuncentro.png'),
(81, 'Fórmula de Bhaskara', 'images\\formula_de_bhaskara.png'),
(82, 'X do Vértice: Equação de 2° Grau', 'images\\x_do_vertice_equacao_de_2_grau.png'),
(83, 'Y do Vértice: Equação de 2° Grau', 'images\\y_do_vertice_equacao_de_2_grau.png'),
(84, 'Soma e Produto das Raízes: Equação de 2° Grau', 'images\\soma_e_produto_das_raizes_equacao_de_2_grau.png'),
(85, 'Quadrado da Soma', 'images\\quadrado_da_soma.png'),
(86, 'Quadrado da Diferença', 'images\\quadrado_da_diferenca.png'),
(87, 'Produto da Soma pela Diferença', 'images\\produto_da_soma_pela_diferenca.png'),
(88, 'Cubo da Soma', 'images\\cubo_da_soma.png'),
(89, 'Cubo da Diferença', 'images\\cubo_da_diferenca.png'),
(90, 'Média Aritmética Simples', 'images\\media_aritmetica_simples.png'),
(91, 'Média Aritmética Ponderada', 'images\\media_aritmetica_ponderada.png'),
(92, 'Moda', 'images\\moda.png'),
(93, 'Mediana', 'images\\mediana.png'),
(94, 'Amplitude', 'images\\amplitude.png'),
(95, 'Desvio', 'images\\desvio.png'),
(96, 'Variância', 'images\\variancia.png'),
(97, 'Desvio Padrão', 'images\\desvio_padrao.png'),
(98, 'Permutação com Repetição', 'images\\permutacao_com_repeticao.png'),
(99, 'Arranjo Simples', 'images\\arranjo_simples.png'),
(100, 'Combinação Simples', 'images\\combinacao_simples.png'),
(101, 'Permutação Simples', 'images\\permutacao_simples.png'),
(102, 'Probabilidade', 'images\\probabilidade.png'),
(103, 'Escala', 'images\\escala.png'),
(104, 'Velocidade Média', 'images\\velocidade_media.png'),
(105, 'Densidade Demográfica', 'images\\densidade_demografica.png'),
(106, 'Densidade de um Corpo', 'images\\densidade_de_um_corpo.png'),
(107, 'Juros Compostos', 'images\\juros_compostos.png'),
(108, 'Juros Simples', 'images\\juros_simples.png'),
(109, 'Montante', 'images\\montante.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
