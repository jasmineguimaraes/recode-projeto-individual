-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 22-Out-2020 às 02:01
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minhaarte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `valorunitario` float NOT NULL,
  `quantidade` int NOT NULL,
  `valortotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `precofinal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `imagem`, `preco`, `precofinal`) VALUES
(1, 'Giz', 'Giz pastel seco 48 cores', '/imgs/brush.jpg', 60, 48.5),
(2, 'canetas', 'Caneta Nanquim 0.4mm', '/imgs/caneta.jpg', 20, 15.5),
(3, 'Telas', 'Tela Grande para pintura', '/imgs/canvas.jpg', 40, 32.5),
(4, 'Tintas', 'Tinta Guache Kit 8 tubos', '/imgs/guache.jpg', 68, 60),
(5, 'Tintas', 'Aquarela em Pastilha 12 cores', '/imgs/watercolor.jpg', 55, 50),
(6, 'Tintas', 'Tinta acrílica brilhante', '/imgs/oil.jpg', 75, 58),
(7, 'Pincéis', 'Pincel Grande', '/imgs/brush.jpg', 22, 20.5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
