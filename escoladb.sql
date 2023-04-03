-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 03-Abr-2023 às 23:01
-- Versão do servidor: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escoladb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) COLLATE utf16_bin NOT NULL,
  `periodo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(50) NOT NULL,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunoturma`
--

DROP TABLE IF EXISTS `alunoturma`;
CREATE TABLE IF NOT EXISTS `alunoturma` (
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  PRIMARY KEY (`id_aluno`,`id_turma`),
  KEY `id_turma` (`id_turma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE IF NOT EXISTS `matricula` (
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  `av1` float DEFAULT NULL,
  `av2` float DEFAULT NULL,
  `media` float DEFAULT NULL,
  `falta` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id_aluno`,`id_turma`),
  KEY `id_turma` (`id_turma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

DROP TABLE IF EXISTS `turma`;
CREATE TABLE IF NOT EXISTS `turma` (
  `id` int(11) NOT NULL,
  `codigo` varchar(6) COLLATE utf16_bin NOT NULL,
  `materia` varchar(70) COLLATE utf16_bin NOT NULL,
  `sala` varchar(255) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
