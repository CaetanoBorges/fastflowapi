-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2024 às 22:34
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fastflow`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `mesa` varchar(500) NOT NULL,
  `quemabriu` varchar(500) DEFAULT NULL,
  `tempo` varchar(500) DEFAULT NULL,
  `quando` varchar(255) NOT NULL,
  `fechado` int(11) NOT NULL,
  `fecho` varchar(200) DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `desconto` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `quemfechou` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`identificador`, `usuario`, `mesa`, `quemabriu`, `tempo`, `quando`, `fechado`, `fecho`, `cliente`, `valor`, `desconto`, `total`, `quemfechou`) VALUES
(1, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 12:37', 1, NULL, '', NULL, NULL, 0, NULL),
(2, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 01:37', 1, NULL, '', NULL, NULL, 0, NULL),
(3, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 01:45', 1, NULL, '', NULL, NULL, 0, NULL),
(4, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 01:47', 1, NULL, '', NULL, NULL, 0, NULL),
(5, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 01:47', 1, NULL, '', NULL, NULL, 0, NULL),
(6, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 01:53', 1, NULL, '', NULL, NULL, 0, NULL),
(7, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 02:07', 1, NULL, '', NULL, NULL, 0, NULL),
(8, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 02:09', 1, NULL, '', NULL, NULL, 0, NULL),
(9, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 02:33', 1, NULL, '', NULL, NULL, 0, NULL),
(10, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 02:35', 1, NULL, '', NULL, NULL, 0, NULL),
(11, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 08:32', 1, NULL, '', NULL, NULL, 0, NULL),
(12, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 08:38', 1, NULL, '', NULL, NULL, 0, NULL),
(13, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 08:41', 1, NULL, '', NULL, NULL, 0, NULL),
(14, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 08:49', 1, NULL, '', NULL, NULL, 0, NULL),
(15, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:19', 1, NULL, '', NULL, NULL, 0, NULL),
(16, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:23', 1, NULL, '', NULL, NULL, 0, NULL),
(17, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:23', 1, NULL, '', NULL, NULL, 0, NULL),
(18, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:25', 1, NULL, '', NULL, NULL, 0, NULL),
(19, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:27', 1, NULL, '', NULL, NULL, 0, NULL),
(20, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:32', 1, NULL, '', NULL, NULL, 0, NULL),
(22, '6643aeb808e91', '001', NULL, NULL, '01-02-2024 09:38', 1, NULL, '', NULL, NULL, 0, NULL),
(24, '6643aeb808e91', '001', NULL, NULL, '24-03-2024 01:33', 1, NULL, '', NULL, NULL, 0, NULL),
(27, '6643aeb808e91', '001', NULL, NULL, '20-05-2024 04:15', 1, NULL, 'Caetano Borges', NULL, NULL, 0, NULL),
(32, '6643aeb808e91', '002', NULL, NULL, '21-05-2024 09:11', 1, '29-07-2024 04:45', 'Caetano Borges', 33200, 0, 33200, NULL),
(33, '6643aeb808e91', '002', NULL, NULL, '31-08-2024 09:11', 1, '29-07-2024 04:45', 'Caetano Borges', 33200, 0, 33200, NULL),
(34, '6643aeb808e91', '002', NULL, NULL, '21-05-2024 09:11', 1, '29-07-2024 04:45', 'Caetano Borges', 33200, 0, 33200, NULL),
(35, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:06', 1, '30-07-2024 10:11', '', 0, 0, 0, NULL),
(36, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:12', 1, '30-07-2024 10:22', '', 27300, 300, 27000, NULL),
(37, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:24', 1, '30-07-2024 10:24', '', 500, 0, 500, NULL),
(38, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:26', 1, '30-07-2024 10:29', '', 3500, 0, 3500, NULL),
(39, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:29', 1, '30-07-2024 10:30', 'Alê Borge', 9500, 0, 9500, NULL),
(40, '6643aeb808e91', '002', NULL, NULL, '30-07-2024 10:39', 1, '30-07-2024 10:40', 'Alê Borge', 3500, 0, 3500, NULL),
(41, '6643aeb808e91', '123456', NULL, NULL, '29-08-2024 07:33', 1, '29-08-2024 07:36', 'Eu aqui', 4700, 20, 4680, NULL),
(42, '6643aeb808e91', '123456', NULL, NULL, '29-08-2024 07:49', 1, '29-08-2024 07:49', 'wertyuiop+', 0, 0, 0, NULL),
(43, '6643aeb808e91', '002', NULL, NULL, '29-08-2024 11:25', 1, '01-09-2024 09:29', 'Caetano Borges', 344200, 0, 344200, '1'),
(44, '6643aeb808e91', '002', '1', '1725219539', '01-09-2024 09:38', 1, '01-09-2024 09:40', 'Alê Borge', 21800, 0, 21800, '1'),
(45, '6643aeb808e91', '123456', '1', '1725219747', '01-09-2024 09:42', 1, '01-09-2024 09:42', 'Caetano Borges', 0, 0, 0, '1'),
(46, '6643aeb808e91', '002', NULL, NULL, '02-09-2024 11:03', 1, '01-10-2024 11:23', 'Caetano Borges', 0, 0, 0, '2'),
(47, '6643aeb808e91', '002', NULL, NULL, '02-09-2024 11:12', 1, '01-10-2024 11:35', 'Caetano', 0, 0, 0, '2'),
(48, '6643aeb808e91', '003', NULL, NULL, '02-09-2024 11:23', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '6643aeb808e91', '001', NULL, NULL, '02-09-2024 11:34', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '6643aeb808e91', '001', NULL, '1727818010', '01-10-2024 11:26', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '6643aeb808e91', '002', NULL, '1727818737', '01-10-2024 11:38', 1, '01-10-2024 11:58', '9878978', 500, 0, 500, '2'),
(52, '6643aeb808e91', '002', NULL, '1727904248', '02-10-2024 11:24', 1, '21-11-2024 10:29', 'outro nome', 0, 0, 0, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerente`
--

CREATE TABLE `gerente` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passe` text NOT NULL,
  `codigo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gerente`
--

INSERT INTO `gerente` (`identificador`, `usuario`, `role`, `nome`, `telefone`, `email`, `passe`, `codigo`) VALUES
(1, '6643aeb808e91', 'admin', 'Caetano Borges Wambembe', '921797626', 'cbcaetanoborges@gmail.com', '690437692d902cfd23005bda16631d83644899e78dc0a489da6dca3cb9f9c0cdcd9dd533bc59102dc90155223df777672328c9149354de239f48c58f0a1d44a6', ''),
(2, '6643aeb808e91', 'tecnico', 'CAETANO WAMBEMBE', '9217976268', 'backoffice@teste.dev', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', NULL),
(3, '6643aeb808e91', 'admin', 'Conceicao a. s. almeida pinto', '935845368', 'cbcaetanoborges@gmail.ao', '690437692d902cfd23005bda16631d83644899e78dc0a489da6dca3cb9f9c0cdcd9dd533bc59102dc90155223df777672328c9149354de239f48c58f0a1d44a6', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `numeromesa` varchar(200) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `ocupada` int(11) NOT NULL,
  `codigo` varchar(500) DEFAULT NULL,
  `vip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`identificador`, `usuario`, `numeromesa`, `descricao`, `ocupada`, `codigo`, `vip`) VALUES
(1, '66426c46b4d88', '001', 'Mesa normal', 0, NULL, 1),
(2, '6643aeb808e91', '002', 'Mesa VIP', 0, '', 1),
(3, '6643aeb808e91', '003', '78hgfg', 0, '', 1),
(5, '6643aeb808e91', '123456', '1234567', 0, '', 0),
(6, '6643aeb808e91', '654', '675', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesaocupada`
--

CREATE TABLE `mesaocupada` (
  `id` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `mesa` varchar(200) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `desocupou` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mesaocupada`
--

INSERT INTO `mesaocupada` (`id`, `usuario`, `mesa`, `nome`, `desocupou`) VALUES
(2, '6643aeb808e91', '001', 'nome', 1),
(3, '6643aeb808e91', '001', 'caetano', 1),
(4, '6643aeb808e91', '001', 'Caetano Borges', 1),
(5, '6643aeb808e91', '001', 'Caetano Borges', 1),
(6, '6643aeb808e91', '001', 'Caetano Borges', 1),
(7, '6643aeb808e91', '001', 'Caetano Borges', 1),
(8, '6643aeb808e91', '001', 'caetano', 1),
(9, '6643aeb808e91', '001', 'caetano', 1),
(10, '6643aeb808e91', '001', 'Caetano ', 1),
(11, '6643aeb808e91', '001', 'caetano', 1),
(12, '6643aeb808e91', '001', 'Caetano Borges', 1),
(13, '6643aeb808e91', '001', 'Caetano Borges', 1),
(14, '6643aeb808e91', '001', 'Caetano Borges', 1),
(15, '6643aeb808e91', '001', 'Gisela', 1),
(16, '6643aeb808e91', '001', 'Ines Sangueve', 1),
(17, '6643aeb808e91', '001', 'Caetano Borges', 1),
(18, '6643aeb808e91', '001', 'ertyuiop', 1),
(19, '6643aeb808e91', '001', 'Caetano', 1),
(20, '6643aeb808e91', '001', 'Caetano', 1),
(21, '6643aeb808e91', '001', 'Caetano', 1),
(22, '6643aeb808e91', '002', 'Gizela', 1),
(23, '6643aeb808e91', '001', 'Eng informat', 1),
(24, '6643aeb808e91', '002', 'Gisela', 1),
(25, '6643aeb808e91', '001', 'Caetano Borges', 1),
(26, '6643aeb808e91', '002', 'Caetano', 1),
(27, '6643aeb808e91', '002', 'Wambembe', 1),
(28, NULL, '001', 'Calibri (corpo)', 1),
(29, NULL, '002', '34 78 8 9 67', 1),
(30, NULL, '002', 'Caetano Borges', 1),
(31, NULL, '002', 'Caetano Borges', 1),
(32, '6643aeb808e91', '002', 'Caetano Borges', 1),
(33, '6643aeb808e91', '002', 'CAETANO WAMBEMBE', 1),
(34, '6643aeb808e91', '002', 'Caetano Borges', 1),
(35, '6643aeb808e91', '002', 'Alê Borge', 1),
(36, '6643aeb808e91', '002', 'Caetano Borges', 1),
(37, '6643aeb808e91', '002', 'Alê Borge', 1),
(38, '6643aeb808e91', '002', 'Alê Borge', 1),
(39, '6643aeb808e91', '002', 'Alê Borge', 1),
(40, '6643aeb808e91', '0033', 'Eu aqui', 1),
(41, '6643aeb808e91', '0033', 'wertyuiop+', 1),
(42, '6643aeb808e91', '002', 'Caetano Borges', 1),
(43, '6643aeb808e91', '002', 'Eu aqui', 1),
(44, '6643aeb808e91', '002', 'Alê Borge', 1),
(45, '6643aeb808e91', '123456', 'Caetano Borges', 1),
(46, '6643aeb808e91', '002', 'Caetano Borges', 1),
(47, '6643aeb808e91', '002', 'Caetano Borges', 1),
(48, '6643aeb808e91', '003', 'Eng informat', 1),
(49, '6643aeb808e91', '002', 'Caetano Borges', 1),
(50, '6643aeb808e91', '002', 'Caetano', 1),
(51, '6643aeb808e91', '002', '9878978', 1),
(52, '6643aeb808e91', '002', 'outro nome', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `notificacao` varchar(500) NOT NULL,
  `quando` varchar(500) NOT NULL,
  `subscritores` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `quem` varchar(500) DEFAULT NULL,
  `itens` text NOT NULL,
  `desconto` varchar(255) DEFAULT NULL,
  `total` varchar(255) NOT NULL,
  `quando` varchar(255) NOT NULL,
  `aceite` int(11) DEFAULT NULL,
  `conta` varchar(500) NOT NULL,
  `quemaceitou` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`identificador`, `usuario`, `quem`, `itens`, `desconto`, `total`, `quando`, `aceite`, `conta`, `quemaceitou`) VALUES
(3, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":1,\"total\":\"3400\"},{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":1,\"total\":\"9900\"}]', NULL, '13300', '01-02-2024 02:35', NULL, '10', NULL),
(4, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":1,\"total\":\"3400\"},{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":1,\"total\":\"9900\"}]', NULL, '13300', '01-02-2024 02:38', NULL, '10', NULL),
(5, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"2\",\"total\":6800}]', NULL, '6800', '01-02-2024 08:29', NULL, '10', NULL),
(6, '6643aeb808e91', NULL, '[{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"5\",\"total\":49500}]', NULL, '49500', '01-02-2024 08:33', NULL, '11', NULL),
(7, '6643aeb808e91', NULL, '[{\"nome\":\"Ngola garrada 250ml\",\"preco\":\"300\",\"qtd\":1,\"total\":\"300\"}]', NULL, '300', '01-02-2024 08:39', NULL, '12', NULL),
(8, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":3400},{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":9900}]', NULL, '13300', '01-02-2024 08:41', 1, '13', NULL),
(9, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":3400},{\"nome\":\"Pudin\",\"preco\":\"1000\",\"qtd\":1,\"total\":\"1000\"}]', NULL, '4400', '01-02-2024 09:29', NULL, '19', NULL),
(10, '6643aeb808e91', NULL, '[{\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":1,\"total\":\"4500\"},{\"nome\":\"Frango panado\",\"preco\":\"12200\",\"qtd\":1,\"total\":\"12200\"}]', NULL, '16700', '01-02-2024 09:30', 1, '19', NULL),
(11, '6643aeb808e91', NULL, '[{\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":500},{\"nome\":\"Ngola garrada 250ml\",\"preco\":\"300\",\"qtd\":\"6\",\"total\":1800}]', NULL, '2300', '01-02-2024 09:40', 0, '22', NULL),
(12, '6643aeb808e91', NULL, '[{\"nome\":\"Frango panado\",\"preco\":\"12200\",\"qtd\":1,\"total\":\"12200\"}]', NULL, '12200', '24-03-2024 01:35', 1, '24', NULL),
(13, '6643aeb808e91', NULL, '[{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"4\",\"total\":13600}]', NULL, '13600', '24-03-2024 01:41', 1, '24', NULL),
(14, '6643aeb808e91', NULL, '[{\"nome\":\"Funge\",\"preco\":\"12200\",\"qtd\":1,\"total\":\"12200\"},{\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":1,\"total\":\"3400\"},{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":1,\"total\":\"9900\"},{\"nome\":\"Pudin\",\"preco\":\"1000\",\"qtd\":1,\"total\":\"1000\"}]', NULL, '26500', '24-03-2024 01:45', 1, '24', NULL),
(15, '6643aeb808e91', NULL, '[{\"nome\":\"Ngola garrada 250ml\",\"preco\":\"300\",\"qtd\":1,\"total\":\"300\"}]', NULL, '300', '24-03-2024 02:47', 1, '24', NULL),
(16, '6643aeb808e91', NULL, '[{\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":500}]', NULL, '500', '21-05-2024 03:04', 1, '30', NULL),
(17, '6643aeb808e91', NULL, '[{\"nome\":\"Arroz branco\",\"preco\":\"500\",\"qtd\":\"4\",\"total\":\"2000\",\"itemnum\":9635}]', NULL, '2000', '21-05-2024 03:10', 1, '32', NULL),
(18, '6643aeb808e91', NULL, '[{\"nome\":\"Macarru00e3o\",\"preco\":\"3400\",\"qtd\":1,\"total\":\"3400\",\"itemnum\":963511}]', NULL, '3400', '21-05-2024 04:34', 1, '32', NULL),
(19, '6643aeb808e91', NULL, '[{\"nome\":\"Macarru00e3o\",\"preco\":\"3400\",\"qtd\":\"3\",\"total\":10200,\"itemnum\":9635777}]', NULL, '10200', '21-05-2024 05:04', 0, '32', NULL),
(21, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721936569579\",\"nome\":\"Ngola garrada 250ml\",\"preco\":\"300\",\"qtd\":\"3\",\"total\":\"900\"},{\"itemnum\":\"L1721936569763\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"}]', NULL, '10800', '25-07-2024 09:47', 0, '32', NULL),
(22, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721938010304\",\"nome\":\"Pudin\",\"preco\":\"1000\",\"qtd\":\"1\",\"total\":\"1000\"}]', NULL, '1000', '25-07-2024 10:06', 0, '32', NULL),
(23, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721938429560\",\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":\"1\",\"total\":\"4500\"}]', NULL, '4500', '25-07-2024 10:13', 1, '32', NULL),
(24, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721938508417\",\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":\"3400\"},{\"itemnum\":\"L1721938508621\",\"nome\":\"Pudin\",\"preco\":\"1000\",\"qtd\":\"1\",\"total\":\"1000\"}]', NULL, '4400', '25-07-2024 10:15', 1, '32', NULL),
(25, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721938508417\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"},{\"itemnum\":\"L1721938508621\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '13400', '25-07-2024 10:15', 1, '32', NULL),
(26, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721938565930\",\"nome\":\"Pudin\",\"preco\":\"1000\",\"qtd\":\"2\",\"total\":\"2000\"}]', NULL, '2000', '25-07-2024 10:16', 1, '32', NULL),
(27, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721939410905\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"},{\"itemnum\":\"L1721939411128\",\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":\"3400\"},{\"itemnum\":\"L1721939411303\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '7400', '25-07-2024 10:30', 0, '32', NULL),
(28, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721939571275\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"2\",\"total\":\"1000\"},{\"itemnum\":\"L1721939571458\",\"nome\":\"Macarru00e3o\",\"preco\":\"3400\",\"qtd\":\"2\",\"total\":\"6800\"}]', NULL, '7800', '25-07-2024 10:33', 0, '32', NULL),
(29, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721939827859\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"},{\"itemnum\":\"L1721939828033\",\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":\"1\",\"total\":\"4500\"}]', NULL, '8000', '25-07-2024 10:37', 0, '32', NULL),
(30, '6643aeb808e91', NULL, '[]', NULL, '0', '25-07-2024 10:39', 0, '32', NULL),
(31, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940109893\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"},{\"itemnum\":\"L1721940110076\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"2\",\"total\":\"7000\"}]', NULL, '7500', '25-07-2024 10:41', 0, '32', NULL),
(32, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940267200\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '3500', '25-07-2024 10:44', 1, '32', NULL),
(33, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940267200\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '3500', '25-07-2024 10:45', 0, '32', NULL),
(34, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940267200\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '3500', '25-07-2024 10:45', 0, '32', NULL),
(35, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940432912\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"},{\"itemnum\":\"L1721940433097\",\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":\"1\",\"total\":\"4500\"}]', NULL, '5000', '25-07-2024 10:47', 0, '32', NULL),
(36, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721940576452\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"},{\"itemnum\":\"L1721940576617\",\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":\"3400\"},{\"itemnum\":\"L1721940576743\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '7400', '25-07-2024 10:49', 0, '32', NULL),
(37, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1721941343715\",\"nome\":\"Macarrão\",\"preco\":\"3400\",\"qtd\":\"1\",\"total\":\"3400\"},{\"itemnum\":\"L1721941343880\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"}]', NULL, '13300', '25-07-2024 11:02', 0, '32', NULL),
(38, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1722370869976\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"2\",\"total\":\"19800\"},{\"itemnum\":\"L1722370870739\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"2\",\"total\":\"7000\"},{\"itemnum\":\"L1722370886427\",\"nome\":\"Arroz branco\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"}]', NULL, '27300', '30-07-2024 10:21', 1, '36', NULL),
(39, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1722371064466\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"}]', NULL, '500', '30-07-2024 10:24', 1, '37', NULL),
(40, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1722371244118\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '3500', '30-07-2024 10:27', 1, '38', NULL),
(41, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1722371389429\",\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":\"2\",\"total\":\"9000\"},{\"itemnum\":\"L1722371389692\",\"nome\":\"Arroz branco\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"}]', NULL, '9500', '30-07-2024 10:30', 1, '39', NULL),
(42, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1722372004898\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '3500', '30-07-2024 10:40', 1, '40', NULL),
(43, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1724952888323\",\"nome\":\"Fatia Bolo\",\"preco\":\"400\",\"qtd\":\"3\",\"total\":\"1200\"},{\"itemnum\":\"L1724952888517\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"}]', NULL, '4700', '29-08-2024 07:35', 1, '41', NULL),
(44, '6643aeb808e91', NULL, '[{\"itemnum\":\"L1724966760639\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"}]', NULL, '9900', '29-08-2024 11:26', 0, '43', NULL),
(45, '6643aeb808e91', '1', '[{\"itemnum\":\"L1725218596238\",\"nome\":\"Fatia Bolo\",\"preco\":\"400\",\"qtd\":\"1\",\"total\":\"400\"},{\"itemnum\":\"L1725218597789\",\"nome\":\"Nome do passageiro\",\"preco\":\"320000\",\"qtd\":\"1\",\"total\":\"320000\"}]', NULL, '320400', '01-09-2024 09:23', 1, '43', '1'),
(47, '6643aeb808e91', '1', '[{\"itemnum\":\"L1725218802909\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"}]', NULL, '9900', '01-09-2024 09:26', 1, '43', '1'),
(48, '6643aeb808e91', '1', '[{\"itemnum\":\"L1725218857211\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"},{\"itemnum\":\"L1725218857413\",\"nome\":\"Musse de maracuja\",\"preco\":\"3500\",\"qtd\":\"1\",\"total\":\"3500\"},{\"itemnum\":\"L1725218859714\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"1\",\"total\":\"9900\"}]', NULL, '13900', '01-09-2024 09:27', 1, '43', '1'),
(49, '6643aeb808e91', '1', '[{\"itemnum\":\"L1725219564811\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"4\",\"total\":\"2000\"}]', NULL, '2000', '01-09-2024 09:39', 1, '44', '1'),
(50, '6643aeb808e91', '1', '[{\"itemnum\":\"L1725219585582\",\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"2\",\"total\":\"19800\"}]', NULL, '19800', '01-09-2024 09:39', 1, '44', '1'),
(51, '6643aeb808e91', NULL, '[{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"4\",\"total\":39600,\"itemnum\":1725313144919}]', NULL, '39600', '02-09-2024 11:39', 1, '49', NULL),
(52, '6643aeb808e91', NULL, '[{\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":2,\"total\":1000,\"itemnum\":1725313307347},{\"nome\":\"Ngola garrada 250ml\",\"preco\":\"300\",\"qtd\":2,\"total\":600,\"itemnum\":1725313307349}]', NULL, '1600', '02-09-2024 11:41', 1, '49', NULL),
(53, '6643aeb808e91', NULL, '[{\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":1,\"total\":\"4500\",\"itemnum\":1725313348329},{\"nome\":\"Frango panado\",\"preco\":\"12200\",\"qtd\":1,\"total\":\"12200\",\"itemnum\":1725313348331}]', NULL, '16700', '02-09-2024 11:42', 1, '49', NULL),
(54, '6643aeb808e91', NULL, '[{\"nome\":\"Frango panado\",\"preco\":\"12200\",\"qtd\":1,\"total\":\"12200\",\"itemnum\":1725313926327},{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":1,\"total\":\"9900\",\"itemnum\":1725313926328}]', NULL, '22100', '02-09-2024 11:52', 1, '49', NULL),
(55, '6643aeb808e91', NULL, '', NULL, '', '10-09-2024 10:39', NULL, '49', NULL),
(56, '6643aeb808e91', NULL, '', NULL, '', '10-09-2024 10:40', NULL, '49', NULL),
(57, '6643aeb808e91', NULL, '', NULL, '', '10-09-2024 10:41', NULL, '49', NULL),
(58, '6643aeb808e91', NULL, '[{\"nome\":\"Massa terra\",\"preco\":\"9900\",\"qtd\":\"12\",\"total\":118800,\"itemnum\":1727817768987}]', NULL, '118800', '01-10-2024 11:22', NULL, '49', NULL),
(59, '6643aeb808e91', NULL, '[{\"nome\":\"Arroz de camarão\",\"preco\":\"5005\",\"qtd\":1,\"total\":\"5005\",\"itemnum\":1727818064283},{\"nome\":\"Bitoque\",\"preco\":\"4500\",\"qtd\":1,\"total\":\"4500\",\"itemnum\":1727818064284}]', NULL, '9505', '01-10-2024 11:27', NULL, '50', NULL),
(60, '6643aeb808e91', '2', '[{\"itemnum\":\"L1727818504721\",\"nome\":\"Frango panado\",\"preco\":\"12200\",\"qtd\":\"1\",\"total\":\"12200\"}]', NULL, '12200', '01-10-2024 11:35', 0, '47', NULL),
(61, '6643aeb808e91', NULL, '[{\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":1,\"total\":\"500\",\"itemnum\":1727818881594}]', NULL, '500', '01-10-2024 11:41', 1, '51', '2'),
(62, '6643aeb808e91', '2', '[{\"itemnum\":\"L1727819119931\",\"nome\":\"Cocacola em lata 300ml\",\"preco\":\"500\",\"qtd\":\"1\",\"total\":\"500\"}]', NULL, '500', '01-10-2024 11:45', 0, '51', NULL),
(63, '6643aeb808e91', NULL, '[{\"nome\":\"Arroz de camarão\",\"preco\":\"5005\",\"qtd\":1,\"total\":\"5005\",\"itemnum\":1727819153496}]', NULL, '5005', '01-10-2024 11:45', 0, '51', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `categoria` varchar(200) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `quando` varchar(200) NOT NULL,
  `img` text DEFAULT NULL,
  `disponivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`identificador`, `usuario`, `categoria`, `nome`, `preco`, `quando`, `img`, `disponivel`) VALUES
(0, '6643aeb808e91', 'bebida', 'Cocacola em lata 300ml', '500', '12345678', '1716290615.jpg', 0),
(5, '6643aeb808e91', 'bebida', 'Ngola garrada 250ml', '300', '12345678', '1716290615.jpg', 0),
(6, '6643aeb808e91', 'sobremesa', 'Fatia Bolo', '400', '12345678', '1722634606-b3b0b0746824d518af9cffab0f52bc31.png', 0),
(7, '6643aeb808e91', 'abertura', 'Massa terra', '9900', '12345678', '1716290615.jpg', 0),
(8, '6643aeb808e91', 'sobremesa', 'Musse de maracuja', '3500', '12345678', '1716290615.jpg', 0),
(9, '6643aeb808e91', 'sobremesa', 'Pudin', '1000', '12345678', '1716290615.jpg', 0),
(10, '6643aeb808e91', 'almoco', 'Bitoque', '4500', '12345678', '1716290615.jpg', 0),
(11, '6643aeb808e91', 'almoco', 'Frango panado', '12200', '12345678', '1716290615.jpg', 0),
(12, '6643aeb808e91', 'almoco', 'Arroz de camarão', '5005', '12345678', '1724950480-360_F_272208218_pS249ZTq8cu3yknECXm0K3U8UtOIBVvr.jpg', 1),
(13, '6643aeb808e91', 'Nomedopassageiro', 'Funge', '12200', '12345678', '1716290615.jpg', 1),
(22, '6643aeb808e91', 'Nomedopassageiro', 'Nome do passageiro', '320000', '01-08-2024 10:18', '1722543512-CHAPEU.png', 0),
(23, '6643aeb808e91', 'Nomedopassageiro', 'Nome do passageiro', '320000', '01-08-2024 10:18', '1724957628-HD-wallpaper-laptop-code-programming-programmer-hacker.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtocategoria`
--

CREATE TABLE `produtocategoria` (
  `id` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `nome` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtocategoria`
--

INSERT INTO `produtocategoria` (`id`, `usuario`, `nome`) VALUES
(1, '6643aeb808e91', 'Nomedopassageiro'),
(2, '6643aeb808e91', 'almoco'),
(3, '6643aeb808e91', 'sobremesa'),
(4, '6643aeb808e91', 'abertura'),
(5, '6643aeb808e91', 'bebida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `push`
--

CREATE TABLE `push` (
  `id` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `authtoken` text NOT NULL,
  `p256dh` text NOT NULL,
  `endpoint` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `push`
--

INSERT INTO `push` (`id`, `usuario`, `authtoken`, `p256dh`, `endpoint`) VALUES
(1, '6643aeb808e91', 'PNyi2gEne16uGwSaeRHgUA', 'BE9ivlBh9U1sekc1QPSJ55c0gO92mLCnjW2q2sP1v2M2D9XEpinDKN7NSLZriQ_i4j1L6FfkUhwffnIHSFa3tk4', 'https://fcm.googleapis.com/fcm/send/fvlRTi2cWm0:APA91bFPi0DyhSq51JChSWIBgqRCxqlJ2ZO7x9Za3HqSFPHgxg0Qnb0FN3Th85AlhLHFuwG4OhQLIJEzcEvHBSv4bCKxNKQPGLl8PiKLkDxq3BIU0cKpj8Xxk1y2VTt36-yYcPQqsvwh'),
(2, '6643aeb808e91', 'oZaEaIW5zCbkLmC0TbrzOg', 'BMA_RDbAVbA7oxd69_PCH8okpv7vbPJFinSAGO9Y4OKKRZ13_BCj9cxBx0Q8IIFJHEuHnO6tX9OtIsXRXuhrOR8', 'https://wns2-par02p.notify.windows.com/w/?token=BQYAAAB7zK5d2f4m6V8gWKgvPWZRbN9m1OquNfYiZHO8ZPC%2fRuVo2v%2bxv58VVkzWwoAQyFgNGkxqgWix5enZRj%2fISXuOmvbuAQf%2fxBcs1XutkbZQJSrCcEgAIBvJHezuQXOMPVW3vbJ3PM8dWXCJ2wtSPhy%2bt7j4y%2b5GrNmPlAAe8E3gvvSFg9E8kPt%2f8yOlGOFOmjkGRgAf%2f1xnQzf87Y%2bPtkFV2HcTjpBjislcy%2bXcO%2bhqzo2QcA%2b5OFacM5Oa%2feBeFnXRnZYmHmuwAh0cwdxyIqooOObhfrjCXaRkxQmZCQWIpuylH8EpqnQnhRhCSuwECo8%3d'),
(3, '6643aeb808e91', 'oZaEaIW5zCbkLmC0TbrzOg', 'BMA_RDbAVbA7oxd69_PCH8okpv7vbPJFinSAGO9Y4OKKRZ13_BCj9cxBx0Q8IIFJHEuHnO6tX9OtIsXRXuhrOR8', 'https://wns2-par02p.notify.windows.com/w/?token=BQYAAAB7zK5d2f4m6V8gWKgvPWZRbN9m1OquNfYiZHO8ZPC%2fRuVo2v%2bxv58VVkzWwoAQyFgNGkxqgWix5enZRj%2fISXuOmvbuAQf%2fxBcs1XutkbZQJSrCcEgAIBvJHezuQXOMPVW3vbJ3PM8dWXCJ2wtSPhy%2bt7j4y%2b5GrNmPlAAe8E3gvvSFg9E8kPt%2f8yOlGOFOmjkGRgAf%2f1xnQzf87Y%2bPtkFV2HcTjpBjislcy%2bXcO%2bhqzo2QcA%2b5OFacM5Oa%2feBeFnXRnZYmHmuwAh0cwdxyIqooOObhfrjCXaRkxQmZCQWIpuylH8EpqnQnhRhCSuwECo8%3d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reclamacao`
--

CREATE TABLE `reclamacao` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `detalhes` text NOT NULL,
  `quando` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reclamacao`
--

INSERT INTO `reclamacao` (`identificador`, `usuario`, `nome`, `telefone`, `email`, `detalhes`, `quando`, `estado`) VALUES
(2, '6643aeb808e91', '', '94368936', 'cb@cb.com', '3o2y584b 4380y3486', '01-02-2024 09:03', 0),
(3, '6643aeb808e91', 'Ines Sangueve', '000000000000', '0000000@00000.com', ' uhroiuhte re eo ye y ye ye09[y [e e yer y\ne ryry\ne y\ny e y', '01-02-2024 09:20', 0),
(4, '6643aeb808e91', 'Caetano', '987541426', 'cb@xn.com', 'Geyebeue eu rhe sve ehe whs sue suw ue ehe e', '01-02-2024 09:28', 1),
(5, '6643aeb808e91', 'Eng informat', '999931637383838', '0000000@00000.com', 'Teste de demostra', '01-02-2024 09:39', 0),
(6, '6643aeb808e91', 'Caetano Borges', '', '', '', '24-03-2024 02:44', 0),
(7, '6643aeb808e9', 'Caetano Borges', '999931637383838', 'cb@xn.com', 'j gr3il4g3;4 3oi 65o6 45o 66[ u45 6', '24-03-2024 02:52', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `identificador` varchar(500) NOT NULL,
  `nome` varchar(500) DEFAULT NULL,
  `telefone` text DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `localizacoes` text DEFAULT NULL,
  `sobre` text DEFAULT NULL,
  `bancos` text DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `slide` text DEFAULT NULL,
  `pub` varchar(500) DEFAULT NULL,
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`identificador`, `nome`, `telefone`, `email`, `localizacoes`, `sobre`, `bancos`, `img`, `slide`, `pub`, `extra`) VALUES
('6643aeb808e91', 'Keep Dream Space', '921797626', 'email@email.email', 'Lage', 'Sobre sobre sobre nos', '1234.0987.4321.0987.5653.1', '1725222277-CHAPEU.png', '[\"1725222277-CHAPEU.png\",\"1725222277-CHAPEU.png\",\"1725222277-CHAPEU.png\"]', '1725222277-CHAPEU.png', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD UNIQUE KEY `identificador` (`identificador`);

--
-- Índices para tabela `gerente`
--
ALTER TABLE `gerente`
  ADD UNIQUE KEY `identificador` (`identificador`);

--
-- Índices para tabela `mesa`
--
ALTER TABLE `mesa`
  ADD UNIQUE KEY `identificador` (`identificador`);

--
-- Índices para tabela `mesaocupada`
--
ALTER TABLE `mesaocupada`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`identificador`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD UNIQUE KEY `identificador` (`identificador`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`identificador`);

--
-- Índices para tabela `produtocategoria`
--
ALTER TABLE `produtocategoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `push`
--
ALTER TABLE `push`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reclamacao`
--
ALTER TABLE `reclamacao`
  ADD PRIMARY KEY (`identificador`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `gerente`
--
ALTER TABLE `gerente`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `mesaocupada`
--
ALTER TABLE `mesaocupada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `produtocategoria`
--
ALTER TABLE `produtocategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `push`
--
ALTER TABLE `push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `reclamacao`
--
ALTER TABLE `reclamacao`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
