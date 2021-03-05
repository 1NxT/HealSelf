-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Mar-2021 às 12:26
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_paulo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.categorias`
--

CREATE TABLE `tb_admin.categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.categorias`
--

INSERT INTO `tb_admin.categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Receitas Light'),
(2, 'Receita Vegana'),
(3, 'Dicas Nutricionais'),
(4, 'Dietas diversas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.receitas`
--

CREATE TABLE `tb_admin.receitas` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.receitas`
--

INSERT INTO `tb_admin.receitas` (`id`, `id_categoria`, `autor`, `titulo`, `slug`, `conteudo`, `imagem`) VALUES
(14, 1, 'admin', 'Arroz integral com frango e legumes', 'arroz-integral-com-frango-e-legumes', 'INGREDIENTES\r\n2 colheres (sopa) de cebola picada\r\n1 colher (sopa) de azeite\r\n4 xícaras  de arroz integral cozido\r\n1 lata de milho em conserva escorrido \r\n1 xícara de vagem em rodelas\r\n2 xícaras de buquezinhos de brócolis\r\n1 cenoura média em rodelas\r\n100 g de cogumelo de Paris fresco\r\n1 peito de frango sem pele e sem osso, em cubos\r\n1 colher (chá) de manteiga\r\nPara polvilhar\r\n1 colher (sopa) de salsa picada \r\n\r\nMODO DE PREPARO\r\n1. Numa panela, refogue a cebola no azeite por um minuto. 2. Junte o milho, a vagem, os brócolis, a cenoura e o cogumelo e refogue por cinco minutos ou até os legumes ficarem macios.\r\n3. Tempere o frango com sal. Numa frigideira média, aqueça a manteiga em fogo médio e junte o frango.\r\n4. Refogue por dez minutos ou até a carne ficar dourada e macia.\r\n5. Junte o frango e os legumes ao arroz e misture.\r\n6. Verifique o tempero e polvilhe com a salsa no momento de servir.', '5fdc095c1ec11.jpg'),
(15, 2, 'admin', 'Pão de Queijo Vegano', 'pao-de-queijo-vegano', 'INGREDIENTES:\r\n2 xícaras de polvilho doce,\r\n1 xícara de polvilho azedo,\r\n1/3 xícara de óleo,\r\n2 xícaras de batata salsa amassada (tipo purê),\r\n1 xícara de água quente,\r\nsal a gosto,\r\ntemperos a gosto (salsinha desidratada, ervas finas, alho desidratado, gergelim, linhaça)\r\n\r\nMODO DE PREPARO:\r\n1. Cozinhar em água fervente, a batata salsa já descascada.\r\n2. Reservar a água utilizada após o fervimento.\r\n3. Amassar as batatas, até a consistência de um purê.\r\n4. Em uma travessa, adicionar o polvilho azedo, o polvilho doce, o óleo, o sal e a água quente do fervimento das batatas.\r\n5. Misturar bem, podendo utilizar as próprias mãos, até virar uma massa uniforme.\r\n6. Acrescentar os temperos que preferir.\r\n7. Pode separar a massa em pedaços e acrescentar temperos diferentes para cada pedaço.\r\n8. Fazer bolinhas, de preferência pequenas, e coloque em uma assadeira antiaderente com espaço entre uma bolinha e outra, pois quase duplica de tamanho.\r\n9. Em forno preaquecido a 180°C, colocar seus pães de queijo veganos por aproximadamente 20 minutos, ou quanto achar necessário.', '5fdc0b9d37337.jpg'),
(16, 3, 'admin', '5 dicas para alimentação saudável', '5-dicas-para-alimentacao-saudavel', '1. Escolha bem os seus alimentos.\r\n\r\nA escolha de bons alimentos é fundamental na nossa vida. Empenhe-se para que a maior parte da sua comida venha dos alimentos que a natureza produz, ou seja, mais alimentos in natura e preferencialmente que sejam alimentos da época, assim eles têm maior valor nutritivo, melhor sabor e preço.  Evite o excesso de alimentos industrializados e principalmente evite os Alimentos Ultraprocessados.\r\n\r\n2. Mastigue muito bem os alimentos.\r\n\r\nA mastigação é o primeiro processo da digestão. Ela ativa a salivação e com isso liberação de enzimas promovendo quebra dos alimentos facilitando a digestão e absorção de nutrientes.\r\n\r\nComer calma e lentamente, mastigar muito bem os alimentos são atos fundamentais inclusive para sinalização de saciedade ao organismo e redução do peso corporal, além de evitar problemas como dor de estômago, azia e mau funcionamento intestinal.\r\n\r\n3. Evite temperos industrializados\r\n\r\nFaça seu próprio tempero em casa. Use e abuse dos sabores e aromas especiais de alho, cebola, alho poro, gengibre, açafrão, alecrim, coentro, orégano, manjericão, pimentas de tantos tipos, salsão, salsinha e cebolinha e tantos outros que melhoram o paladar e principalmente o valor nutricional da preparação.\r\n\r\nErvas e temperos têm grande poder antioxidante e antiinflamatório tão necessários no nosso dia a dia.\r\n\r\n4. Opte por comer frutas mais do que beber sucos.\r\n\r\nAs frutas têm mais fibras do que os sucos de frutas, ainda mais quando são sucos coados.\r\n\r\nMuitas vezes os sucos se compõem de uma grande quantidade de frutas e por vezes com adição de açúcar ou adoçante artificial. Nada disso é preciso se comer a fruta pura.\r\n\r\nAs fibras de frutas in natura auxiliam no bom funcionamento intestinal, na saciedade e ainda permitem uma elevação de glicemia, dentro da nossa corrente sanguínea, mais lentamente e isso é favorável inclusive para evitar ganho excessivo de peso.\r\n\r\n5. Escolha um bom azeite.\r\n\r\nEscolha um azeite de oliva extravirgem, prensado a frio, e que tenha acidez menor do que 0,8%. Este é rico em gorduras monoinsaturadas, que melhoram o perfil lipídico do nosso organismo.\r\n\r\nPor ser anti-inflamatório o azeite de oliva extravirgem atua no fortalecimento do sistema imunológico, além de prevenir doenças cardiovasculares, combater o envelhecimento precoce e doenças degenerativas.\r\n\r\nO azeite de oliva extravirgem é prensado a frio, ou seja, é um método mecânico e não a base de solventes químicos e com isso não perde a sua parte nobre que são os compostos fenólicos e antioxidantes. É basicamente uma prensagem das azeitonas que separa a parte sólida da líquida gerando um azeite encorpado que pode ou não ser filtrado para retirar os sólidos, mas isso consta no rótulo. O teor de acidez é o que diferencia o azeite virgem do azeite extravirgem.\r\n\r\nDevemos escolher um bom azeite e consumi-lo preferencialmente sobre o prato de comida pronto e se for aquecer que seja por pouco tempo em temperatura não muito alta. Deve ser armazenado ao abrigo da luz e em garrafa escura.', '5fdc0c0ba4298.jpg'),
(17, 4, 'admin', 'Dicas para se dar bem com qualquer dieta', 'dicas-para-se-dar-bem-com-qualquer-dieta', '1. Não fique mais do que 4 horas sem se alimentar\r\n2. Durma bem. Durante o sono, nosso organismo produz a leptina, hormônio capaz de controlar a sensação de saciedade durante todo o dia\r\n3. Beba pelo menos 2 litros por dia\r\n4. Invista na salada. Ela ajuda a enganar o estômago e comer menos nas refeições. Procure verduras e legumes que você goste e não sejam muito calóricos\r\n5. Prefira os alimentos integrais. Eles contêm mais nutrientes e fibras, que fazem um bem danado para o seu organismo\r\n6. Evite a ingestão de sal e alimentos com muito sódio, que favorecem a retenção de líquidos\r\n7. Prefira preparações menos calóricas, como assados, cozidos ou a vapor. Alimentos gratinados, fritos, à parmegiana ou à milanesa devem ser evitados\r\n8. Procure ajuda de nutricionistas ou nutrólogos\r\n9. Se exagerar em algum dia, não desista. Recomece novamente no dia seguinte.', '5fdc0c9e51b0d.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `email`, `password`) VALUES
(1, 'admin', 'guiljerme786@gmail.com', 'admin'),
(19, 'Paulo', 'paulo@gmail.com', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.categorias`
--
ALTER TABLE `tb_admin.categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `tb_admin.receitas`
--
ALTER TABLE `tb_admin.receitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.categorias`
--
ALTER TABLE `tb_admin.categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_admin.receitas`
--
ALTER TABLE `tb_admin.receitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
