-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.34-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para ranking
CREATE DATABASE IF NOT EXISTS `ranking` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ranking`;


-- Copiando estrutura para tabela ranking.clubes
CREATE TABLE IF NOT EXISTS `clubes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(144) DEFAULT NULL,
  `nome_logo` varchar(144) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ranking.clubes: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `clubes` DISABLE KEYS */;
INSERT INTO `clubes` (`id`, `nome`, `nome_logo`, `valor`) VALUES
	(2, 'Atlético Goianiense', 'AtleticoGoianiense.png', 1.5440267930135447),
	(3, 'Atlético Mineiro', '120px-Atletico_mineiro_galo.png', 0.6104466457539574),
	(4, 'Atlético Paranaense', 'Escudo_do_Bahia.png', 0.8203948269842053),
	(5, 'Avaí', 'Avai_FC_(05-E)_-_SC.svg.png', 0.7664803670798775),
	(6, 'Bahia', 'sdfs.png', 0.8640231329104527),
	(7, 'Botafogo', 'Botafogo_de_Futebol_e_Regatas_logo.svg.png', 1.0388428331347928),
	(8, 'Chapecoense', 'Novo_escudo_da_Associacao_Chapecoense_de_Futebol.png', 0.6441229871445442),
	(9, 'Corinthians', 'Corinthians_simbolo.png', 0.8032365468375772),
	(10, 'Coritiba', 'Coritiba_FBC_(2011)_-_PR.svg.png', 0.8106501360408804),
	(11, 'Cruzeiro', 'Escudo_Cruzeiro_Esporte_Clube_2016.png', 1.2944095108263471),
	(12, 'Flamengo', 'Flamengo_escudo.svg.png', 3.455008880804494),
	(13, 'Fluminense', 'Fluminense_FC_escudo.png', 1.152928481743406),
	(14, 'Grêmio', 'Gremio.png', 0.9129585520344894),
	(15, 'Palmeiras', 'Palmeiras_logo.svg.png', 1.7870937110806628),
	(16, 'Ponte Preta', 'Escudo_Oficial_Ponte_Preta.png', 0.733760135913528),
	(17, 'Santos', 'LogoSantosFC.png', 0.03570076131571796),
	(18, 'São Paulo', 'EscudoSaoPauloFC.png', 0.49379261570141586),
	(19, 'Sport', '120px-Sport_Club_do_Recife.png', 1.0562457132525365),
	(20, 'Vasco da Gama', 'Club_de_Regatas_Vasco_da_Gama.png', -0.08807259571529039),
	(21, 'Vitória', 'logo.png', 1.2639499641428569);
/*!40000 ALTER TABLE `clubes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
