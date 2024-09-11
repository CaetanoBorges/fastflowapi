-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Set-2024 às 17:16
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.0.0

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
(1, 'ioifjir', 'PNyi2gEne16uGwSaeRHgUA', 'BE9ivlBh9U1sekc1QPSJ55c0gO92mLCnjW2q2sP1v2M2D9XEpinDKN7NSLZriQ_i4j1L6FfkUhwffnIHSFa3tk4', 'https://fcm.googleapis.com/fcm/send/fvlRTi2cWm0:APA91bFPi0DyhSq51JChSWIBgqRCxqlJ2ZO7x9Za3HqSFPHgxg0Qnb0FN3Th85AlhLHFuwG4OhQLIJEzcEvHBSv4bCKxNKQPGLl8PiKLkDxq3BIU0cKpj8Xxk1y2VTt36-yYcPQqsvwh');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `push`
--
ALTER TABLE `push`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `push`
--
ALTER TABLE `push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
