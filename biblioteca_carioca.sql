-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2026 às 15:42
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_carioca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome`, `nacionalidade`, `data_nascimento`) VALUES
(338, 'philip k dick', 'estaunidense', '1928-12-26'),
(1938, 'tim berners lee', 'britanico', '1955-06-08'),
(3877, 'mario a monteiro', 'brasileiro', '1979-02-01'),
(4653, 'epicuro', 'grego', '0000-00-00'),
(5437, 'paulo coelho', 'brasileiro', '1947-08-24'),
(6393, 'noam chomsky', 'estadunidense', '1928-12-07'),
(7650, 'shingeo Shingo', 'japones', '1909-01-08'),
(7962, 'john marsden', 'australiano', '1950-09-27'),
(8550, 'mallinaga vatsyayana', 'indiano', '0000-00-00'),
(8899, 'yanis varoufakis', 'grego', '1961-03-24'),
(9561, 'thomas nield', 'estadunidense', '0000-00-00'),
(9755, 'fu hsi', 'chines', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`, `descricao`) VALUES
(514, 'estudos sociais', 'a transformacao do capitalismo deu lugar a plataformas digitais'),
(779, 'auto ajuda', 'antigo texto indiano sobre o comportamento sexual humano'),
(872, 'informatica', 'um guia de praticas do SQL'),
(1794, 'estudos sociais', 'ainda há tempo para manter a internet segura e democratica'),
(2468, 'ficcao', 'um caçador de recompenas elimina androides na terra'),
(3337, 'ficcao', 'sem preparo ou armas eles precisam decidir em lutar ou fugir'),
(3581, 'informatica', 'apresentacao do básico ao avancado sobre o funcionamento dos computadores'),
(4096, 'auto ajuda', 'adaptacao do oraculo chines sobre relacionamento afetivos'),
(4387, 'informatica', 'um guia sobre descobrir analisar e eliminar perdas na engenharia de producao'),
(4866, 'ficcao', 'um jovem pastor tem sonhos recorrentes em encontrar um tesouro'),
(5369, 'estudos sociais', 'uma abordagem sobre a teoria linguistica'),
(6741, 'auto ajuda', 'a proposta de uma vida simples com paz e harmonia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome`, `cidade`, `pais`) VALUES
(45017, 'edipro', 'atenas', 'grecia'),
(74470, 'unesp', 'sao francisco', 'estados unidos'),
(161027, 'pensamento', 'tianshui', 'china'),
(184866, 'ltc', 'rio de janeiro', 'brasil'),
(406838, 'mittal publishing', 'patna', 'india'),
(612032, 'paralela', 'sao paulo', 'brasil'),
(651978, 'seiva', 'londres', 'reino unido'),
(710309, 'critica', ' atenas', 'grecia'),
(837456, 'fundamento', 'auckland', 'australia'),
(923450, 'aleph', 'nova york', 'estados unidos'),
(973314, 'novatec', 'houston', 'estados unidos'),
(992145, 'bookman', 'tokio', 'japao');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_emprestimo` int(11) NOT NULL,
  `id_exemplar` int(11) DEFAULT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `disponibilidade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_emprestimo`, `id_exemplar`, `id_livro`, `id_usuario`, `data_emprestimo`, `data_devolucao`, `disponibilidade`) VALUES
(110, 1112, 1262, 9140, '2026-12-07', '0000-00-00', 'indisponivel'),
(210, 1210, 1262, 6593, '2022-11-21', '2022-12-10', 'disponivel'),
(1167, 4129, 6120, 3542, '2026-11-28', '0000-00-00', 'indisponivel'),
(1710, 1057, 1101, 9140, '2026-12-07', '0000-00-00', 'indisponivel'),
(2376, 4721, 3607, 5962, '2025-06-08', '2025-08-08', 'disponivel'),
(2417, 1023, 7106, 669, '2024-03-01', '2024-04-10', 'disponivel'),
(3610, 1050, 1583, 5962, '2025-06-08', '0000-00-00', 'indisponivel'),
(5212, 6853, 8097, 669, '2026-11-21', '2026-12-10', 'disponivel'),
(5310, 1150, 2104, 5962, '2025-06-08', '2025-08-08', 'disponivel'),
(5639, 5012, 7109, 9814, '2025-09-13', '2025-10-14', 'disponivel'),
(6819, 4912, 1203, 5962, '2025-06-08', '2025-07-12', 'disponivel'),
(7154, 1211, 7112, 6593, '2026-03-21', '2026-04-10', 'disponivel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exemplar`
--

CREATE TABLE `exemplar` (
  `id_exemplar` int(11) NOT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `codigo_patrimonio` varchar(30) DEFAULT NULL,
  `estado_conservacao` varchar(45) DEFAULT NULL,
  `disponibilidade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exemplar`
--

INSERT INTO `exemplar` (`id_exemplar`, `id_livro`, `codigo_patrimonio`, `estado_conservacao`, `disponibilidade`) VALUES
(1023, 7106, 'PAT-411', 'bom', 'indisponivel'),
(1050, 1583, 'PAT-276', 'otimo', 'indisponivel'),
(1057, 1101, 'PAT-194', 'bom', 'indisponivel'),
(1112, 1262, 'PAT-125', 'otimo', 'disponivel'),
(1150, 2104, 'PAT-811', 'bom', 'disponivel'),
(1210, 1262, 'PAT-310', 'bom', 'indisponivel'),
(1211, 7112, 'PAT-891', 'bom', 'disponivel'),
(4129, 6120, 'PAT-265', 'bom', 'disponivel'),
(4721, 3607, 'PAT-129', 'bom', 'disponivel'),
(4912, 1203, 'PAT-927', 'bom', 'indisponivel'),
(5012, 7109, 'PAT-115', 'otimo', 'disponivel'),
(6853, 8097, 'PAT-110', 'bom', 'indisponivel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(11) NOT NULL,
  `id_editora` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `ano_publicacao` date DEFAULT NULL,
  `numero_paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `id_editora`, `id_categoria`, `titulo`, `ISBN`, `ano_publicacao`, `numero_paginas`) VALUES
(1101, 161027, 4096, 'i ching do amor', '8531512360', '0000-00-00', 151),
(1203, 710309, 514, 'tecnofeudalismo', '8542233190', '2025-04-28', 240),
(1229, 74470, 5369, 'linguagem e mente', '8571399425', '2009-10-26', 343),
(1262, 992145, 4387, 'o sistema toyota de producao', '8573071699', '1996-01-01', 291),
(1583, 184866, 3581, 'introducao a ornanizacao de computadores', '8521615434', '2007-04-25', 720),
(2104, 837456, 3337, 'amanha quando a guerra comecou', ' 8576762218', '2008-01-01', 256),
(3607, 406838, 779, 'kamasutra', '9380936354', '0000-00-00', 320),
(6120, 651978, 1794, 'isto e para todos', '6583239140', '2026-11-25', 292),
(7106, 45017, 6741, 'cartas a epicuro', '6556600318', '0000-00-00', 160),
(7109, 973314, 872, 'introducao a linguagem sql', '8575225014', '2016-04-05', 144),
(7112, 923450, 2468, 'os androides sonham com as ovelhas eletricas?', '9788576571797', '2025-09-16', 303),
(8097, 612032, 4866, 'o alquimista', '8584395768', '2026-08-18', 216);

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro_autor`
--

CREATE TABLE `livro_autor` (
  `id_livro` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livro_autor`
--

INSERT INTO `livro_autor` (`id_livro`, `id_autor`) VALUES
(1101, 9755),
(1203, 8899),
(1229, 6393),
(1262, 7650),
(1583, 3877),
(2104, 7962),
(3607, 8550),
(6120, 1938),
(7106, 4653),
(7109, 9561),
(7112, 338),
(8097, 5437);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `CPF`, `email`, `data_cadastro`) VALUES
(669, 'eduarda fernandez', '33708341708', 'eduardamariafernandes@camarasjc.sp.gov.br', '2024-03-01'),
(3542, 'nicole aurora', '16297977747', 'nicole-pereira79@starmidia.tv', '2026-06-01'),
(5962, 'cesar caleb', '05437192789', 'cesar_calebe_duarte@vnews.com.br', '2025-06-08'),
(6593, 'isaac souza', '48657088711', 'daniel_caue_souza@desir.com.br', '2022-11-21'),
(9140, 'gustavo souza', '86482337716', 'gustavo_diogo_souza@asconnet.com.br', '2026-12-07'),
(9814, 'valentina almada', '65753225730', 'valentina-almada81@clinicasilhouette.com.br', '2025-09-12');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_emprestimo`),
  ADD KEY `id_exemplar` (`id_exemplar`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `exemplar`
--
ALTER TABLE `exemplar`
  ADD PRIMARY KEY (`id_exemplar`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices de tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD PRIMARY KEY (`id_livro`,`id_autor`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_exemplar`) REFERENCES `exemplar` (`id_exemplar`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Restrições para tabelas `exemplar`
--
ALTER TABLE `exemplar`
  ADD CONSTRAINT `exemplar_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`);

--
-- Restrições para tabelas `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Restrições para tabelas `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD CONSTRAINT `livro_autor_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  ADD CONSTRAINT `livro_autor_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
