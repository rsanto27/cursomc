-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 08-Maio-2019 às 17:54
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curso_spring`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Informática'),
(2, 'Escritório'),
(3, 'Cama mesa e banho'),
(4, 'Eletrônicos'),
(5, 'Jardinagem'),
(6, 'Decoração'),
(7, 'Perfumaria'),
(8, 'Informática'),
(9, 'Escritório'),
(10, 'Cama'),
(11, 'mesa'),
(12, 'banho'),
(13, 'jardinagem'),
(14, 'Decoração'),
(15, 'Perfumaria'),
(16, 'Informática'),
(17, 'Escritório'),
(18, 'Cama'),
(19, 'mesa'),
(20, 'banho'),
(21, 'jardinagem'),
(22, 'Decoração'),
(23, 'Perfumaria'),
(24, 'Informática'),
(25, 'Escritório'),
(26, 'Cama'),
(27, 'mesa'),
(28, 'banho'),
(29, 'jardinagem'),
(30, 'Decoração'),
(31, 'Perfumaria'),
(32, 'Informática'),
(33, 'Escritório'),
(34, 'Cama'),
(35, 'mesa'),
(36, 'banho'),
(37, 'jardinagem'),
(38, 'Decoração'),
(39, 'Perfumaria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `estado_id`) VALUES
(1, 'Uberlândia', 1),
(2, 'São Paulo', 2),
(3, 'Campinas', 2),
(4, 'Uberlãndia', 3),
(5, 'São Paulo', 4),
(6, 'Campinas', 4),
(7, 'Uberlãndia', 5),
(8, 'São Paulo', 6),
(9, 'Campinas', 6),
(10, 'Uberlãndia', 7),
(11, 'São Paulo', 8),
(12, 'Campinas', 8),
(13, 'Uberlãndia', 9),
(14, 'São Paulo', 10),
(15, 'Campinas', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cpf_ou_cnpj` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `cpf_ou_cnpj`, `email`, `nome`, `senha`, `tipo`) VALUES
(1, '36378912377', 'nelio.cursos@gmail.com', 'Maria Silva', NULL, 1),
(2, '31628382740', 'nelio.iftm@gmail.com', 'Ana Costa', NULL, 1),
(3, '12345678912', 'maria@gmail.com', 'Maria Silva', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `cidade_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id`, `bairro`, `cep`, `complemento`, `logradouro`, `numero`, `cidade_id`, `cliente_id`) VALUES
(1, 'Jardim', '38220834', 'Apto 303', 'Rua Flores', '300', 1, 1),
(2, 'Centro', '38777012', 'Sala 800', 'Avenida Matos', '105', 2, 1),
(3, 'Centro', '281777012', NULL, 'Avenida Floriano', '2106', 2, 2),
(4, 'Jardim Patricia', '38414010', 'nenhum', 'Rua teste', '300', 4, 3),
(5, 'Jardim Patricia', '38414010', 'nenhum2', 'Rua teste2', '3002', 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id`, `nome`) VALUES
(1, 'Minas Gerais'),
(2, 'São Paulo'),
(3, 'Minas Gerais'),
(4, 'São Paulo'),
(5, 'Minas Gerais'),
(6, 'São Paulo'),
(7, 'Minas Gerais'),
(8, 'São Paulo'),
(9, 'Minas Gerais'),
(10, 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_pedido`
--

CREATE TABLE `item_pedido` (
  `desconto` double DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `pedido_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `item_pedido`
--

INSERT INTO `item_pedido` (`desconto`, `preco`, `quantidade`, `pedido_id`, `produto_id`) VALUES
(0, 2000, 1, 1, 1),
(0, 80, 2, 1, 3),
(100, 800, 1, 2, 2),
(0, 2000, 1, 3, 51),
(0, 80, 2, 3, 53),
(100, 800, 1, 3, 52);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `pedido_id` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`pedido_id`, `estado`) VALUES
(1, 2),
(2, 1),
(3, 2),
(4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento_com_boleto`
--

CREATE TABLE `pagamento_com_boleto` (
  `data_pagamento` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamento_com_boleto`
--

INSERT INTO `pagamento_com_boleto` (`data_pagamento`, `data_vencimento`, `pedido_id`) VALUES
(NULL, '2017-10-19 23:00:00', 2),
(NULL, '2017-10-19 23:00:00', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento_com_cartao`
--

CREATE TABLE `pagamento_com_cartao` (
  `numero_de_parcelas` int(11) DEFAULT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamento_com_cartao`
--

INSERT INTO `pagamento_com_cartao` (`numero_de_parcelas`, `pedido_id`) VALUES
(6, 1),
(6, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `instante` datetime DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `endereco_de_entrega_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `instante`, `cliente_id`, `endereco_de_entrega_id`) VALUES
(1, '2017-09-30 10:32:00', 1, 1),
(2, '2017-10-10 19:35:00', 1, 2),
(3, '2017-09-30 10:32:00', 3, 4),
(4, '2017-10-10 19:35:00', 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis`
--

CREATE TABLE `perfis` (
  `cliente_id` int(11) NOT NULL,
  `perfis` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfis`
--

INSERT INTO `perfis` (`cliente_id`, `perfis`) VALUES
(1, 2),
(2, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `preco`) VALUES
(1, 'Computador', 2000),
(2, 'Impressora', 800),
(3, 'Mouse', 80),
(4, 'Mesa de escritório', 300),
(5, 'Toalha', 50),
(6, 'Colcha', 200),
(7, 'TV true color', 1200),
(8, 'Roçadeira', 800),
(9, 'Abajour', 100),
(10, 'Pendente', 180),
(11, 'Shampoo', 90),
(12, 'Produto 12', 10),
(13, 'Produto 13', 10),
(14, 'Produto 14', 10),
(15, 'Produto 15', 10),
(16, 'Produto 16', 10),
(17, 'Produto 17', 10),
(18, 'Produto 18', 10),
(19, 'Produto 19', 10),
(20, 'Produto 20', 10),
(21, 'Produto 21', 10),
(22, 'Produto 22', 10),
(23, 'Produto 23', 10),
(24, 'Produto 24', 10),
(25, 'Produto 25', 10),
(26, 'Produto 26', 10),
(27, 'Produto 27', 10),
(28, 'Produto 28', 10),
(29, 'Produto 29', 10),
(30, 'Produto 30', 10),
(31, 'Produto 31', 10),
(32, 'Produto 32', 10),
(33, 'Produto 33', 10),
(34, 'Produto 34', 10),
(35, 'Produto 35', 10),
(36, 'Produto 36', 10),
(37, 'Produto 37', 10),
(38, 'Produto 38', 10),
(39, 'Produto 39', 10),
(40, 'Produto 40', 10),
(41, 'Produto 41', 10),
(42, 'Produto 42', 10),
(43, 'Produto 43', 10),
(44, 'Produto 44', 10),
(45, 'Produto 45', 10),
(46, 'Produto 46', 10),
(47, 'Produto 47', 10),
(48, 'Produto 48', 10),
(49, 'Produto 49', 10),
(50, 'Produto 50', 10),
(51, 'Computador', 2000),
(52, 'Impressora', 800),
(53, 'Mouse', 80),
(54, 'Mesa de Escritório', 300),
(55, 'Toalha', 50),
(56, 'Colcha', 200),
(57, 'TV True Color', 1200),
(58, 'Roçadeira', 800),
(59, 'Abajour', 100),
(60, 'Pendente', 180),
(61, 'Shampoo', 90),
(62, 'Computador', 2000),
(63, 'Impressora', 800),
(64, 'Mouse', 80),
(65, 'Mesa de Escritório', 300),
(66, 'Toalha', 50),
(67, 'Colcha', 200),
(68, 'TV True Color', 1200),
(69, 'Roçadeira', 800),
(70, 'Abajour', 100),
(71, 'Pendente', 180),
(72, 'Shampoo', 90),
(73, 'Computador', 2000),
(74, 'Impressora', 800),
(75, 'Mouse', 80),
(76, 'Mesa de Escritório', 300),
(77, 'Toalha', 50),
(78, 'Colcha', 200),
(79, 'TV True Color', 1200),
(80, 'Roçadeira', 800),
(81, 'Abajour', 100),
(82, 'Pendente', 180),
(83, 'Shampoo', 90),
(84, 'Computador', 2000),
(85, 'Impressora', 800),
(86, 'Mouse', 80),
(87, 'Mesa de Escritório', 300),
(88, 'Toalha', 50),
(89, 'Colcha', 200),
(90, 'TV True Color', 1200),
(91, 'Roçadeira', 800),
(92, 'Abajour', 100),
(93, 'Pendente', 180),
(94, 'Shampoo', 90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_categoria`
--

CREATE TABLE `produto_categoria` (
  `produto_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto_categoria`
--

INSERT INTO `produto_categoria` (`produto_id`, `categoria_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 4),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 8),
(51, 11),
(52, 8),
(52, 9),
(52, 11),
(53, 8),
(53, 11),
(54, 9),
(55, 10),
(56, 10),
(57, 11),
(58, 12),
(59, 13),
(60, 13),
(61, 14),
(62, 16),
(62, 19),
(63, 16),
(63, 17),
(63, 19),
(64, 16),
(64, 19),
(65, 17),
(66, 18),
(67, 18),
(68, 19),
(69, 20),
(70, 21),
(71, 21),
(72, 22),
(73, 24),
(73, 27),
(74, 24),
(74, 25),
(74, 27),
(75, 24),
(75, 27),
(76, 25),
(77, 26),
(78, 26),
(79, 27),
(80, 28),
(81, 29),
(82, 29),
(83, 30),
(84, 32),
(84, 35),
(85, 32),
(85, 33),
(85, 35),
(86, 32),
(86, 35),
(87, 33),
(88, 34),
(89, 34),
(90, 35),
(91, 36),
(92, 37),
(93, 37),
(94, 38);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `cliente_id` int(11) NOT NULL,
  `telefones` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`cliente_id`, `telefones`) VALUES
(1, '27363323'),
(1, '93838393'),
(2, '93883321'),
(2, '34252625'),
(3, '32192048'),
(3, '32153857');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkworrwk40xj58kevvh3evi500` (`estado_id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_cmxo70m08n43599l3h0h07cc6` (`email`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8b1kcb3wucapb8dejshyn5fsx` (`cidade_id`),
  ADD KEY `FK8s7ivtl4foyhrfam9xqom73n9` (`cliente_id`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD PRIMARY KEY (`pedido_id`,`produto_id`),
  ADD KEY `FKtk55mn6d6bvl5h0no5uagi3sf` (`produto_id`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`pedido_id`);

--
-- Indexes for table `pagamento_com_boleto`
--
ALTER TABLE `pagamento_com_boleto`
  ADD PRIMARY KEY (`pedido_id`);

--
-- Indexes for table `pagamento_com_cartao`
--
ALTER TABLE `pagamento_com_cartao`
  ADD PRIMARY KEY (`pedido_id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK30s8j2ktpay6of18lbyqn3632` (`cliente_id`),
  ADD KEY `FK1fihyy2fnocpuwc74674qmfkv` (`endereco_de_entrega_id`);

--
-- Indexes for table `perfis`
--
ALTER TABLE `perfis`
  ADD KEY `FKsobr8hl9guwr8775lyl1mncg2` (`cliente_id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto_categoria`
--
ALTER TABLE `produto_categoria`
  ADD KEY `FKq3g33tp7xk2juh53fbw6y4y57` (`categoria_id`),
  ADD KEY `FK1c0y58d3n6x3m6euv2j3h64vt` (`produto_id`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD KEY `FK8aafha0njkoyoe3kvrwsy3g8u` (`cliente_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
