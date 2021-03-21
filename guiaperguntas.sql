-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 21-Mar-2021 às 02:08
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `guiaperguntas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE IF NOT EXISTS `perguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `titulo`, `descricao`, `createdAt`, `updatedAt`) VALUES
(1, 'AVALIAÇÃO PEDAGÓGICA E ERGONÔMICA DA METODOLOGIA BASEADA EM PBL E OFICINAS DE JOGOS 2D: UM CASO DE ESTUDO ABORDANDO O ASSUNTO DE LÓGICA MATEMÁTICA', 'AVALIAÇÃO PEDAGÓGICA E ERGONÔMICA DA METODOLOGIA BASEADA EM PBL E OFICINAS DE JOGOS 2D: UM CASO DE ESTUDO ABORDANDO O ASSUNTO DE LÓGICA MATEMÁTICA', '2021-03-18 02:14:10', '2021-03-18 02:14:10'),
(2, 'Muitos erros ', 'Erro com o mysql', '2021-03-18 02:20:15', '2021-03-18 02:20:15'),
(3, 'Node ou PHP?', 'Qual devo aprender?', '2021-03-18 22:06:30', '2021-03-18 22:06:30'),
(4, 'MAC é vale a pena?', 'MAC é vale a pena?', '2021-03-18 22:43:54', '2021-03-18 22:43:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

DROP TABLE IF EXISTS `resposta`;
CREATE TABLE IF NOT EXISTS `resposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corpo` text NOT NULL,
  `perguntaId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `corpo`, `perguntaId`, `createdAt`, `updatedAt`) VALUES
(1, 'Node é bem melhor', 3, '2021-03-20 22:31:18', '2021-03-20 22:31:18'),
(2, 'PHP é sem graça ', 3, '2021-03-20 22:31:31', '2021-03-20 22:31:31'),
(3, 'PHP sfovdvkdaknADKNVDNVndvndkANVKDNAVNDAKVNDAKNVKNDVKADNVKDAVKNADVKNADVKNADKNVKADNV', 3, '2021-03-21 02:01:58', '2021-03-21 02:01:58'),
(4, 'VNXVNXVNXVNXVNXVNXNXVNXVNXVNXVNXVNXVNXV', 3, '2021-03-21 02:02:08', '2021-03-21 02:02:08'),
(5, 'fwfwfwfwfwf', 3, '2021-03-21 02:04:57', '2021-03-21 02:04:57'),
(6, 'Sou mais MAC', 4, '2021-03-21 02:05:51', '2021-03-21 02:05:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
