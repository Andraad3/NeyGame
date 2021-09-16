-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28-Maio-2021 às 23:35
-- Versão do servidor: 10.3.22-MariaDB-log
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `270064`
--
CREATE DATABASE IF NOT EXISTS `270064` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `270064`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `melhor_pontuacao` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `melhor_pontuacao`) VALUES
(4, 'Ylime', 'noyogay218@animex98.com', '99f006035652d940bf600b5024e92841', 0),
(2, 'teste', 'teste@gmail.com', '202cb962ac59075b964b07152d234b70', 270),
(3, 'Domingo', 'domingo@gmail.com', '5fd7f7695c29cae3f47f80e6939f33ba', 210),
(5, 'irineu', 'quebecgamer13@gmail.com', '4297f44b13955235245b2497399d7a93', 210),
(6, 'Bananeira', 'gabriel.andrade.ismael@gmail.com', '2a4a1081708d6de567acc2eb3db538e9', 210),
(7, 'BnN', 'asdfghjklç~', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(8, 'ALEXANDRE ', 'neymito123@gmail.com', '59c733a3fbd06bbeab9e0e602e9a91d9', 210),
(9, 'neyney', 'neyneyreidelas@gmail.com', '59c733a3fbd06bbeab9e0e602e9a91d9', 120),
(10, 'teste2', 'teste2@gmail.com', '202cb962ac59075b964b07152d234b70', 270);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
