-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Ago-2021 às 19:04
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_clientes_praga`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(255) NOT NULL,
  `cpf_cliente` char(11) DEFAULT NULL,
  `cnpj_cliente` char(14) DEFAULT NULL,
  `endereco_cliente` varchar(255) DEFAULT NULL,
  `telefone_cliente` varchar(15) DEFAULT NULL,
  `celular_cliente` varchar(15) DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `cpf_cliente`, `cnpj_cliente`, `endereco_cliente`, `telefone_cliente`, `celular_cliente`, `email_cliente`) VALUES
(1, 'Afonsinho Lopez', '68420415030', NULL, 'Rua Florencio', NULL, '3240028922', 'Afonsinho@gmail.com'),
(2, 'Amanda Souza', '29658034080', NULL, 'Rua Amoêdo', NULL, '4888994321', 'AmandaSouza@gmail.com'),
(3, 'Jonas Schmitz', '38288294065', NULL, 'Rua Cambridge', NULL, '4799778654', 'SchmitzJonas@gmail.com'),
(4, 'Ronaldo Cardoso', '31529689066', NULL, 'Rua Araranguá', NULL, '4899375644', 'ronacard@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(255) NOT NULL,
  `data_nasc_funcionario` date DEFAULT NULL,
  `cpf_funcionario` char(11) NOT NULL,
  `senha_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome_funcionario`, `data_nasc_funcionario`, `cpf_funcionario`, `senha_login`) VALUES
(1, 'Ednaldo de Souza', '1986-03-23', '91644828049', '40028'),
(2, 'Andreia Fernandes', '1996-03-02', '02684477051', '33214'),
(3, 'Paulo Moreira', '1990-05-17', '09650328092', '90901'),
(4, 'Mario Rezende', '1991-05-06', '89836954040', '10134'),
(5, 'Alessandra da Silva', '1997-08-30', '83055321006', '88674');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pragas`
--

CREATE TABLE `pragas` (
  `id_praga` int(11) NOT NULL,
  `nome_praga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pragas`
--

INSERT INTO `pragas` (`id_praga`, `nome_praga`) VALUES
(1, 'Barata'),
(2, 'Carrapato'),
(3, 'Pulgas'),
(4, 'Escorpiões'),
(5, 'Traças'),
(6, 'Formigas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `descricao_produto` varchar(255) DEFAULT NULL,
  `principioativo_produto` varchar(100) DEFAULT NULL,
  `grupoquimico_produto` varchar(100) DEFAULT NULL,
  `fabricante_produto` varchar(50) DEFAULT NULL,
  `registro_produto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome_produto`, `descricao_produto`, `principioativo_produto`, `grupoquimico_produto`, `fabricante_produto`, `registro_produto`) VALUES
(1, 'Ficam', NULL, 'Bendiocarbe', 'Carbamatos', 'Bayer', '3.3222.0010'),
(2, 'Formi Eco Gel', NULL, 'Fipronil', 'Fenil Pirazol', 'Ddlimp', '3.2690.004.001-7'),
(3, 'Clor-in 500 1000 10.000', NULL, 'Dicloro-S- Triazinetione de Sódio', 'Cloroisocianuratos', 'Acuapura', '3.1243.0001'),
(4, 'Float', NULL, 'Linear alquibenzenossulfonato de sódio e Lauril éter sulfato de sódio', NULL, 'Easytech', '25351.159275/2017-56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_praga`
--

CREATE TABLE `produtos_praga` (
  `id_produto_praga` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_praga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos_praga`
--

INSERT INTO `produtos_praga` (`id_produto_praga`, `id_produto`, `id_praga`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `nome_servico` varchar(50) NOT NULL,
  `descricao_servico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `nome_servico`, `descricao_servico`) VALUES
(1, 'Desintetização', NULL),
(2, 'Desintetização spot clean', NULL),
(3, 'Higienização da caixa da água', NULL),
(4, 'Limpeza de sofás, cadeiras, estofados, tapetes e c', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `pragas`
--
ALTER TABLE `pragas`
  ADD PRIMARY KEY (`id_praga`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `produtos_praga`
--
ALTER TABLE `produtos_praga`
  ADD PRIMARY KEY (`id_produto_praga`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_praga` (`id_praga`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos_praga`
--
ALTER TABLE `produtos_praga`
  ADD CONSTRAINT `produtos_praga_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  ADD CONSTRAINT `produtos_praga_ibfk_2` FOREIGN KEY (`id_praga`) REFERENCES `pragas` (`id_praga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
