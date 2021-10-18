-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/10/2021 às 19:02
-- Versão do servidor: 10.4.20-MariaDB
-- Versão do PHP: 8.0.9

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
-- Estrutura para tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id_agendamento` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_servico` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `data_agendamento` date DEFAULT NULL,
  `qtd_aplicacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `agendamento`
--

INSERT INTO `agendamento` (`id_agendamento`, `id_cliente`, `id_servico`, `id_funcionario`, `data_agendamento`, `qtd_aplicacao`) VALUES
(1, 3, 3, NULL, '2021-09-23', 7),
(2, 4, 3, NULL, '2021-09-23', 8),
(3, 4, 3, NULL, '2021-10-03', 4),
(4, 5, 3, NULL, '2021-09-23', 5),
(5, 4, 1, NULL, '2021-10-01', 7),
(6, 1, 3, NULL, '2021-09-30', 10),
(7, 2, 3, NULL, '2021-09-29', 9),
(8, 3, 4, NULL, '2021-09-24', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
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
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `cpf_cliente`, `cnpj_cliente`, `endereco_cliente`, `telefone_cliente`, `celular_cliente`, `email_cliente`) VALUES
(1, 'Afonsinho Lopez', '68420415030', NULL, 'Rua Florêncio Esteves', NULL, '3240028934', 'Afonsinho@gmail.com'),
(2, 'Amanda Souza', '29658034080', NULL, 'Rua Amoêdo', NULL, '4888994321', 'AmandaSouza@gmail.com'),
(3, 'Jonas Schmitz', '38288294065', NULL, 'Rua Cambridge', NULL, '4799778654', 'SchmitzJonas@gmail.com'),
(4, 'Ronaldo Cardoso', '31529689066', NULL, 'Rua Araranguá Silveira', NULL, '4899375644', 'ronacard@gmail.com'),
(5, 'Luiz Machado da Silva', NULL, NULL, 'Rua Imigrantes', NULL, '4988334567', 'LuizSilva@gmail.com'),
(6, 'Ricardo de Souza Medeiros', NULL, NULL, 'Rua Joaquim Batista dos Santos', NULL, '47996745532', 'ricardinho@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(255) NOT NULL,
  `data_nasc_funcionario` date DEFAULT NULL,
  `cpf_funcionario` char(11) NOT NULL,
  `senha_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome_funcionario`, `data_nasc_funcionario`, `cpf_funcionario`, `senha_login`) VALUES
(1, 'Ednaldo de Souza', '1986-03-23', '91644828049', '40028'),
(2, 'Andreia Fernandes', '1996-03-02', '02684477051', '12345'),
(3, 'Paulo Moreira', '1990-05-17', '09650328092', '90901'),
(4, 'Mario Rezende', '1991-05-06', '89836954040', '10134'),
(5, 'Alessandra da Silva', '1997-08-30', '83055321006', '12345');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pragas`
--

CREATE TABLE `pragas` (
  `id_praga` int(11) NOT NULL,
  `nome_praga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pragas`
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
-- Estrutura para tabela `produtos`
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
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome_produto`, `descricao_produto`, `principioativo_produto`, `grupoquimico_produto`, `fabricante_produto`, `registro_produto`) VALUES
(1, 'Ficam', NULL, 'Bendiocarbe', 'Carbamatos', 'Bayer', '3.3222.0010'),
(2, 'Formi Eco Gel', NULL, 'Fipronil', 'Fenil Pirazol', 'Ddlimp', '3.2690.004.001-7'),
(3, 'Clor-in 500 1000 10.000', NULL, 'Dicloro-S- Triazinetione de Sódio', 'Cloroisocianuratos', 'Acuapura', '3.1243.0001'),
(4, 'Float', NULL, 'Linear alquibenzenossulfonato de sódio e Lauril éter sulfato de sódio', NULL, 'Easytech', '25351.159275/2017-56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_praga`
--

CREATE TABLE `produtos_praga` (
  `id_produto_praga` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_praga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produtos_praga`
--

INSERT INTO `produtos_praga` (`id_produto_praga`, `id_produto`, `id_praga`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `nome_servico` varchar(50) NOT NULL,
  `descricao_servico` varchar(255) DEFAULT NULL,
  `id_produto_praga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `nome_servico`, `descricao_servico`, `id_produto_praga`) VALUES
(1, 'Desintetização', NULL, NULL),
(2, 'Desintetização spot clean', NULL, NULL),
(3, 'Higienização da caixa da água', NULL, NULL),
(4, 'Limpeza de sofás, cadeiras, estofados, tapetes e c', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id_agendamento`),
  ADD KEY `fk_id_cliente` (`id_cliente`),
  ADD KEY `fk_id_servico` (`id_servico`),
  ADD KEY `fk_id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `pragas`
--
ALTER TABLE `pragas`
  ADD PRIMARY KEY (`id_praga`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `produtos_praga`
--
ALTER TABLE `produtos_praga`
  ADD PRIMARY KEY (`id_produto_praga`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_praga` (`id_praga`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `id_produto_praga` (`id_produto_praga`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  ADD CONSTRAINT `fk_id_servico` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id_servico`);

--
-- Restrições para tabelas `produtos_praga`
--
ALTER TABLE `produtos_praga`
  ADD CONSTRAINT `produtos_praga_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  ADD CONSTRAINT `produtos_praga_ibfk_2` FOREIGN KEY (`id_praga`) REFERENCES `pragas` (`id_praga`);

--
-- Restrições para tabelas `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`id_produto_praga`) REFERENCES `produtos_praga` (`id_produto_praga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
