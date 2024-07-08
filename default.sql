-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Set-2023 às 22:00
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `default`
--
CREATE DATABASE IF NOT EXISTS `default` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `default`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hash_users`
--

CREATE TABLE `hash_users` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hash_user` varchar(32) NOT NULL,
  `situation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `params` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `params`) VALUES
(1, 'Desenvolvimento', '1,2,3'),
(2, 'Administrador', '1,2,3'),
(3, 'Gerente', '1,2,3,4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_params`
--

CREATE TABLE `permission_params` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `permission_params`
--

INSERT INTO `permission_params` (`id`, `name`, `description`) VALUES
(1, 'add_user', 'adicionar usuario'),
(2, 'add_permission', 'adicionar permissão'),
(3, 'view_dashboard', 'Ver DashBoard'),
(4, 'add_params', 'Adicionar Parâmetro de Permissão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name_item` varchar(255) NOT NULL,
  `price_item` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name_item`, `price_item`) VALUES
(1, '1984', '25.00'),
(2, 'Revolução dos bichos', '25.00'),
(3, 'A arte de ligar o fodasse', '25.00'),
(4, 'A arte da guerra', '25.00'),
(5, 'Os Sertões', '25.00'),
(6, 'O poder do agora', '25.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `id_group` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `situation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `id_group`, `type`, `situation`) VALUES
(1, 'admin@gmail.com', 'Admin', '$2y$10$vWa4i57igSBbEBXDwZxmNOo9PvLV1li0lzK9c5wQx3HK4HFRMBWJi', 3, 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `hash_users`
--
ALTER TABLE `hash_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permission_params`
--
ALTER TABLE `permission_params`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `hash_users`
--
ALTER TABLE `hash_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `permission_params`
--
ALTER TABLE `permission_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
