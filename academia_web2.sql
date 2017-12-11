-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 11/12/2017 às 20:04
-- Versão do servidor: 5.7.20-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia_web2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `identidade` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `primeiro_nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `bairro` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rua` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` mediumblob,
  `nascimento` date NOT NULL,
  `desconto` int(2) NOT NULL DEFAULT '0',
  `bolsista` tinyint(4) NOT NULL,
  `sexo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `identidade`, `email`, `primeiro_nome`, `sobrenome`, `telefone`, `celular`, `bairro`, `rua`, `cidade`, `complemento`, `foto`, `nascimento`, `desconto`, `bolsista`, `sexo`, `ativo`) VALUES
(2, '11223344555', 'rosane@gmail.com', 'Rosane', 'Tunala', '214904034', '997277651', 'km 49', 'rua do grêmio', 'seropédica', 'ap 1105', NULL, '1975-11-11', 0, 0, 'f', 0),
(3, '111111111', 'gabriel@gmail.com', 'Gabriel', 'da silva', '214904034', '997277651', 'Copacabana', 'Rua barata ribeiro,56', 'Rio de janeiro', 'ap 1105', NULL, '2017-12-13', 0, 0, 'm', 0),
(4, '3333333333', 'carlos@gmail.com', 'Carlos', 'da silva sauro', '987654321', '987654322', 'Rio de janeiro', 'Rua barata ribeiro, 104', 'Rio de janeiro', 'apartamento 32', NULL, '2017-12-10', 0, 1, 'm', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_participa` int(11) NOT NULL,
  `data` date NOT NULL,
  `pago` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `participa`
--

CREATE TABLE `participa` (
  `id_turma` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_participa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `identidade` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `foto` blob,
  `primeiro_nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `modalidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_salario` int(11) DEFAULT NULL,
  `administrador` tinyint(4) NOT NULL DEFAULT '0',
  `sexo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(4) NOT NULL DEFAULT '1',
  `curriculo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `identidade`, `email`, `senha`, `foto`, `primeiro_nome`, `sobrenome`, `modalidade`, `tipo_salario`, `administrador`, `sexo`, `telefone`, `ativo`, `curriculo`) VALUES
(1, '98765432101', 'filipeklinger@gmail.com', '123', 0x89504e470d0a1a0a0000000d49484452000001000000010008030000006bac5854000002bb504c5445ffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d1dd9dc000000e874524e530000fd2acbc2b6334177874684764c04e5fe022b927e09f9360358e4ad454eedef080b8a0765c1f032f4cd15fcd110f7425c1e0519340e675bd0fb24a21a0cf38085140af2ddc01823f6da266661c46ef87aeb63754de3e0f53cdb951d884a4fd43759c7bdd844302fa6ea17a5dee7867db539d6062db855cc1b5eb9ca11d257c9dcc6a40f782c215d6dec3bd38deeae699a131cdf5112a8252738162ee2af79297440e13ae93f9c7b60529f017f7020fa9ebb28bc56b4bae896c8b1f19b8f504364832282681f7c9873538e72319d9348ac3d6c3ed935c5aabfb35491976b7162a7cea90dcf5ab2c752f257000005fd4944415478daecdd557714591486617680099040c78d782084040884e0ee2e83bbbbbb33e8e0eeeeee8cbbbbbbbb7e3f63209d2c4a183a9df4a1726a7dcf7d5dd47beaaa56ed5de58888888888888888888888888888888888888888888888c8448aa9a19804fcb2b21e6069f79e5202abd6f470498095cfa5e688df1a87bdd4c52501e4690c17bfb5434d714b00c90c9f227e6a11fbb7c73d011ae129f153222a897b02c827d82f7e790d9f8b9b02b4ead82946fce0a91bdbd5550164004e8a1f76a19db82b40dab0da23a4d8da6f096becb200321a2dc528e69d23a3fbbf1f1d1a1a7dfaf557cf6dec20465158266e0b204f609e785deb31ee950983bbc120f76ce7a84da7e2c56b61d0ea08f70598123e3e42443a4cfab0592ceeabf9b64f3f6b2d773c8bade2be00f23c1a48f0f63578a0c15147642066881b03c40c0a5b1e0edf26ec9b76c08d013c0d06a198cef74f735f80512be087ba575c16206f06fc94d8c24d019ace82df526aba2640fa6e94c8ba7aee08d0e2059450dd0d6e08b0350c25d62f49ff00a33aa214fa2ed63dc0c05c944a9d717a07a8df0da5d43c59e700c776a0d46acfd337404e770440f511ba06b8f60c0cd6de48b83e0cc570f68d84cd9d6190d950d300556190112122f5e6c2a7ce47e58e393098ad6780c9b1b8a7a214d8330b3ea4ee9502c6544143750c10bf1606bdc4eb3df87050bcf6c3e0b11a1a06a809a349e2f5287cc810af38180dd02f40bd30183511afabf061a77825c028a58b5e01ec479d1d2f77e5ed800fb59f94029930c9d02dc0fa59306bb952445aac864fdb2245a4f5cf30ab355db300bb60b56f7874cb5414439bdfa3a3bac3eaa45e0122fe40800daba15580b108b824ad026c47c05dd42980673e02ee788c4601360421f0e66914a02714a8aa5180ab5060a746012a4081891e6d02ac3f0f05dae46b13a0471da810ac4d80a1506294360192a144036d026c82129bb509506d49050596246810402d066080b21920ab66db394d0fc943f566c2a5b66fc74594850057c6e3aebe2fc64991bcc8f20a44de942253be1b82bbb29b3a1ea0c6cb2812fb91149a1b1ea44078a6146a320445a6a63b1b203e1106ef8ad72228d15bbcfac060790d4703bc05936a52e0112851510a5c088751949301226fc1a453bafa000beac26cac83016ec3a2bffa001fc022d1b900f5fac16282fa002760513bdfb100676095ba477580f4eab04a762c404fd87cac3ac0a1e6b0aaea5880cab039a33a40166caa3816e071d854521d201836239d7d029c0f50850118800118800118800118800118800118800118800118800118800118800118800118800118800118800118800118800118800118e0617d25565f75804665e92bb1d3b0f9427580c9b009752c400358059d521d604437587de95800fb690ceaa03a806722acbe722cc082af613143540790e1b0086bed5800fb66b0faea03348245863817e04075982c12f501e4204c525a3917c03a27bea5ebc308d0ca5cbda93817c032c155ab92280ee0f5cd34dc73c9e9c1c9556128941d2caa03148afc1685faf5727e72b4cbf5c772818ebd9ba489fa00853c97bfaf05f49d3f3baf4ccc0ec76f8c0b5e2a22ea0318e467c575f594b1e971f501ac18800118800118a02c0550bc3f409b0053a1c40fda04e80525fa6813a0f1712830adbd3601e447287059a7454ab311703fe9b549aa2d022c43b7555a2115eb206082c6276bb84b2c3229a4c82fb0991a6272113673428a242dd47d995a79d8448bc90dd84c72d136b960d8848a4955d85463000660000660000660000660000660000660000660000660000660005d0334824d3b31a90c9b812e0a70cce75be15f6193e4a200f96d60f59b982c8655f8421705886806ab2c31395c0716d5d35d144046c262e2024ba26c58b4143705387c0b6603c4a2092cceb92a8044c1a45363b1881903933fc55d01fe6a0683e695c4262e170633a7bb2c80dc349c70ec3f721fa38718ee3f52dc164072d6a150b30b725f6357a050e25e57fe6b6ce8ee3129b506ffbb2c4dfe47c3712766a6a6ccbf5ddfb53f5b8b6f3f3d461e28ed688e47fc558e8888888888888888888888888888e8bff6e0900000000040d0ffd7564700000000005c4b1a13a74e9c960f0000000049454e44ae426082, 'Filipe', 'klinger', 'Musculação', 1, 1, 'm', '37056909', 1, NULL),
(2, '84587436587', 'romeualves1985@gmail.com', 'abc123', NULL, 'Romeu', 'Alves', 'Jump', NULL, 1, 'm', '543678627', 1, NULL),
(3, '222222222', 'robert@gmail.com', 'abc123', NULL, 'Robert', 'G.', 'Musculação', NULL, 1, 'm', '987654321', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `horario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_alunos` int(11) NOT NULL,
  `valo_mensalidade` float NOT NULL,
  `modalidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_participa`,`data`);

--
-- Índices de tabela `participa`
--
ALTER TABLE `participa`
  ADD PRIMARY KEY (`id_turma`,`id_aluno`),
  ADD UNIQUE KEY `id_participa_UNIQUE` (`id_participa`),
  ADD KEY `fk_id_aluno_idx` (`id_aluno`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `fk_professor_idx` (`idprofessor`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `participa`
--
ALTER TABLE `participa`
  MODIFY `id_participa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_pagamento_1` FOREIGN KEY (`id_participa`) REFERENCES `participa` (`id_participa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `participa`
--
ALTER TABLE `participa`
  ADD CONSTRAINT `fk_id_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_turma` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `fk_professor` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`id_professor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
