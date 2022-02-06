-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.20-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para agendamento_vacinacao
DROP DATABASE IF EXISTS `agendamento_vacinacao`;
CREATE DATABASE IF NOT EXISTS `agendamento_vacinacao` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `agendamento_vacinacao`;

-- Copiando estrutura para tabela agendamento_vacinacao.agendamento
DROP TABLE IF EXISTS `agendamento`;
CREATE TABLE IF NOT EXISTS `agendamento` (
  `idagendamento` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  `data` date NOT NULL,
  `usuario_cpf` varchar(45) NOT NULL,
  PRIMARY KEY (`idagendamento`),
  UNIQUE KEY `usuario_cpf` (`usuario_cpf`),
  UNIQUE KEY `hora` (`hora`),
  CONSTRAINT `fk_agendamento_usuario` FOREIGN KEY (`usuario_cpf`) REFERENCES `usuario` (`cpf`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela agendamento_vacinacao.agendamento: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;

-- Copiando estrutura para tabela agendamento_vacinacao.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `cpf` varchar(45) NOT NULL,
  `nome_completo` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela agendamento_vacinacao.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`cpf`, `nome_completo`, `senha`, `login`) VALUES
	('   .   .   -  ', '.', '.', '.');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
