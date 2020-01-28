

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Ago-2019 às 00:15
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
DROP DATABASE IF EXISTS comercio;

CREATE DATABASE comercio;
 
USE comercio;
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_restrito`
--

CREATE TABLE `acesso_restrito` (
  `pk_restrito` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acesso_restrito`
--

INSERT INTO `acesso_restrito` (`pk_restrito`, `nome`, `email`, `telefone`, `login`, `senha`) VALUES
(1, 'Administrador', '(21) 0000-0000', 'admin@admin.com', 'admin', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `dtnasc` date NOT NULL,
  `identidade` varchar(12) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `endereco` varchar(70) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `celular` varchar(13) NOT NULL,
  `imagem` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `cpf`, `dtnasc`, `identidade`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `email`, `senha`, `celular`, `imagem`) VALUES
(9, 'Maria', '2000-03-20', '0000-00-00', '1003240932', '20030-041', 'Rua Santa Luzia', '323', '2323', 'Centro', 'Rio de Janeiro', 'RJ', 'pedro@gmail.com', '123', '3424334', '359e26dfb685a25e7bcbfa744c5543f5.jpg'),
(10, 'Marcos', '2000-02-10', '0000-00-00', '0-40-43-0', '21220310', 'Estrada Coronel Vieira', '33', '33', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', 'marcos@gmail.com', '123', '123443', '1423f8d3adade1fe7ec05a1b21d7b211.jpg'),
(11, 'Maria', '2000-02-20', '0000-00-00', '90909009', '21512340', 'Beco SÃ£o Pedro', '22', '22', 'Costa Barros', 'Rio de Janeiro', 'RJ', 'maria@gmail.com', '123', '323232', '5c4e10ec30e9cb0d58aa010cfe6b7873.jpg'),
(12, 'Ana', '2000-02-20', '0000-00-00', '9999090', '21220310', 'Estrada Coronel Vieira', '12', '11', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', 'ana@gmail.com', '123', '219990093', 'f1b5f3a0125d44360cb35012a51603d0.jpg'),
(13, 'Ana', '2000-02-20', '0000-00-00', '9999090', '21220310', 'Estrada Coronel Vieira', '12', '11', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', 'ana@gmail.com', '123', '219990093', '3004bf293ee729e294c4f29c876b9937.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `codpedido` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `sub` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `codproduto` int(11) NOT NULL,
  `datacompra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codpedido`, `qtd`, `sub`, `total`, `codcliente`, `codproduto`, `datacompra`) VALUES
(1, 1, 199.00, 199.00, 9, 2, '2019-08-10'),
(2, 1, 250.00, 449.00, 9, 3, '2019-08-10'),
(3, 2, 500.00, 500.00, 9, 3, '2019-08-10'),
(4, 1, 389.00, 889.00, 9, 4, '2019-08-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `preco` varchar(12) NOT NULL,
  `imagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codproduto`, `descricao`, `categoria`, `preco`, `imagem`) VALUES
(1, 'Kit para Arduino', 'Kits DidÃ¡ticos', '67', 'kitarduino.png'),
(2, 'Kit Iniciante V8 para Arduino', 'Kits Did&aacute;ticos', '199.00', 'kitiniciantev8.png'),
(3, 'Kit Avancado V4 para Arduino', 'Kits Did&aacute;ticos', '250.00', 'kitavancadov4.png'),
(4, 'Master Kit: Kit Iniciante V8 + Kit Avan&ccedil;ado V4', 'Kits Did&aacute;ticos', '389.00', 'kitiniciantev8v4.png'),
(5, 'Kit Iniciante para Robotica', 'Kits Did&aacute;ticos', '349.00', 'kitrobotica.png'),
(6, 'Arduino Shield - Ethernet W5500', 'Shields para Arduino', '119.00', 'ethernetw5500.png'),
(7, 'Arduino Shield - Padawan', 'Shields para Arduino', '49.00', 'padawan.png'),
(8, 'Arduino Shield - Albatross Master', 'Shields para Arduino', '69.00', 'albastrossmaster.png'),
(9, 'Arduino Shield - CNC V3', 'Shields para Arduino', '29.00', 'cncv3.png'),
(10, 'Arduino Shield - Joystick', 'Shields para Arduino', '49.00', 'joystick.png'),
(11, 'Placa Nano V3 + Cabo USB para Arduino', 'Placas Arduino', '39.00', 'placananov3.png'),
(12, 'Placa RC FTDI V1.1', 'Placas Arduino', '35.00', 'placarcftdi.png'),
(13, 'Placa STM32F103C8T6 ARM Cortex M3', 'Placas Arduino', '35.00', 'cortexm3.png'),
(14, 'Placa Uno R3 + Cabo USB para Arduino', 'Placas Arduino', '54.00', 'placaunor3.png'),
(15, 'ATmega328 com Arduino Optiboot (UNO)', 'Placas Arduino', '21.50', 'atmega328.png'),
(16, 'Bra&ccedil;o Rob&oacute;tico RoboARM', 'Originais RoboCore', '149.00', 'braco.png'),
(17, 'BlackBoard Pro Mini - 5V/16MHz', 'Originais RoboCore', '25.00', 'board.png'),
(18, 'Kit Resistor 500', 'Originais RoboCore', '29.00', 'resistor.png'),
(19, 'M&oacute;dulo Display Serial', 'Originais RoboCore', '25.00', 'display.png'),
(20, 'Sensor de Som', 'Originais RoboCore', '12.00', 'sensor.png'),
(21, 'Mult&igrave;metro Digital Hikari HM-1001', 'Novidades', '39.00', 'multi.png'),
(22, 'Linux para Makers', 'Novidades', '75.00', 'linux.png'),
(23, 'Micro Servo MG90S TowerPro', 'Novidades', '25.00', 'servo.png'),
(24, 'Carregador de Bateria iMax B6 com Fonte', 'Novidades', '215.00', 'carregador.png'),
(25, 'Fita LED RGB Endere&ccedil;ável WS2812B 5050 - 1 metro', 'Novidades', '59.00', 'fita.png'),
(26, 'Albatross - Fonte 12V 1A para m&oacute;dulos escravos', 'Automa&ccedil;&atilde;o Resid', '19.00', 'escravos.png'),
(27, 'Albatross Slave - Rel&ecirc;', 'Automa&ccedil;&atilde;o Resid', '289.00', 'slave.png'),
(28, 'Cabo de Rede 3,0m - Patch Cord', 'Automa&ccedil;&atilde;o Resid', '8.50', 'cabo.png'),
(29, 'Albatross cabo IR - 5m', 'Automa&ccedil;&atilde;o Resid', '9.00', 'caboir.png'),
(30, 'Válvula Solenoide 1/2 x 1/2', 'Automa&ccedil;&atilde;o Resid', '49.00', 'valvula.png'),
(31, 'Bot&atilde;o Arcade Amarelo', 'Itens Eletr&ocirc;nicos', '9.00', 'yellowp.png'),
(32, 'Bot&atilde;o Arcade Azul', 'Itens Eletr&ocirc;nicos', '9.00', 'blup.png'),
(33, 'Bot&atilde;o Arcade Verde', 'Itens Eletr&ocirc;nicos', '9.00', 'greenp.png'),
(34, 'Bot&atilde;o Arcade Vermelho', 'Itens Eletr&ocirc;nicos', '9.00', 'redp.png'),
(35, 'Joystick Arcade', 'Itens Eletr&ocirc;nicos', '49.00', 'jostick.png'),
(36, 'Cart&atilde;o de Mem&oacute;ria MicroSD 16GB Classe 10 Sandisk', 'Embarcados', '39.00', 'caard.png'),
(37, 'Cart&atilde;o de Mem&oacute;ria MicroSD 32GB Classe 10 Sandisk', 'Embarcados', '99.00', 'card.png'),
(38, 'Guia do Maker para o Apocalipse Zumbi', 'Embarcados', '59.00', 'zumbi.png'),
(39, 'WorkPlate 400', 'Embarcados', '14.90', 'work.png'),
(40, 'C&acirc;mera para Raspberry Pi Rev 1.3', 'Embarcados', '69.90', 'rasp.png'),
(41, 'M&oacute;dulo WiFi - ESP8266', 'Internet das Coisas', '25.00', 'modulo.png'),
(42, 'ESP32 - WiFi & Bluetooth', ' Internet das Coisas', '79.00', 'eps.png'),
(43, 'M&oacute;dulo Ethernet ENC28J60', 'Internet das Coisas', '29.00', 'enc.png'),
(44, 'NodeMCU ESP8266-12 V2', 'Internet das Coisas', '49.00', 'node.png'),
(45, 'Adaptador para ESP8266', ' Internet das Coisas', '14.90', 'epss.png'),
(46, 'Adaptador HDMI - VGA com Audio', 'Cabos e Conectores', '49.00', 'hdmivga.png'),
(47, 'Adaptador P4 F&ecirc;mea - Borne', 'Cabos e Conectores', '2.90', 'pp.png'),
(48, 'Adaptador P4 Macho - Borne', 'Cabos e Conectores', '2.90', 'pm.png'),
(49, 'Borne Emenda 2 Vias', 'Cabos e Conectores', '2.50', 'borne.png'),
(50, 'Deans Style T-Connectors', 'Cabos e Conectores', '10.00', 'style.png'),
(51, 'Caixa de Redu&ccedil;&atilde;o Orbit500 4:1', 'Caixas de Redu&ccedil;&atilde;o', '99.00', 'caixab.png'),
(52, 'Orbit500 - Bloco Frontal', 'Caixas de Redu&ccedil;&atilde;o', '42.00', 'orbit.png'),
(53, 'Orbit500 - Engrenagem Planeta / Pinh&atilde;o (Jogo)', 'Caixas de Redu&ccedil;&atilde;o', '10.00', 'engre.png'),
(54, 'Orbit500 - Eixo 8mm', 'Caixas de Redu&ccedil;&atilde;o', '15.00', 'eixo.png'),
(55, 'Orbit500 - Prato de Sa&igrave;da p/ Eixo', 'Caixas de Redu&ccedil;&atilde;o', '14.50', 'pratoo.png'),
(56, 'LCD 16x2 5V Laranja no Preto', 'Displays e LCDs', '16.90', 'lcd.png'),
(57, 'LCD 16x2 5V Preto no Verde com Barra de Pinos Soldada', 'Displays e LCDs', '23.90', 'lcdb.png'),
(58, 'LCD 16x2 Com Interface I2C', 'Displays e LCDs', '39.00', 'lcda.png'),
(59, 'LCD 20x4 5V Preto no Verde', 'Displays e LCDs', '40.90', 'lcdv.png'),
(60, 'Display LCD TFT Touch 3.5 para Raspberry Pi', 'Displays e LCDs', '159.00', 'lcdtft.png'),
(61, 'Circuito Meia Ponte BTN7970B', 'Drivers de Motores', '24.90', 'ponte.png'),
(62, 'Circuito Ponte-H - L293D', 'Drivers de Motores', '9.90', 'ponteh.png'),
(63, 'Driver para motor de passo DM322E 50VDC / 2.2A', 'Drivers de Motores', '199.00', 'motor.png'),
(64, 'Driver de Motor de Passo A4988', 'Drivers de Motores', '14.90', 'motorp.png'),
(65, 'SyRen 25A', 'Drivers de Motores', '499.00', 'syren.png'),
(66, 'Alicate de Bico Longo HK-507', 'Ferramentas', '19.90', 'alicate.png'),
(67, 'Alicate de Corte de Precis&atilde;o', 'Ferramentas', '19.00', 'alicatep.png'),
(68, 'Chave Phillips 1/8 x 3 Pol PH0 - Stanley', 'Ferramentas', '4.50', 'chavep.png'),
(69, 'Mult&igrave;metro Digital DT-830D', 'Ferramentas', '39.00', 'multid.png'),
(70, 'Kit de Chaves Philips e Fenda', 'Ferramentas', '45.00', 'kitchave.png'),
(71, 'Bateria LiPo 11,1V 2200mAh 30C', 'Fontes e Baterias', '149.00', 'fonteb.png'),
(72, 'Fonte Ajustá&aacute;vel para Protoboard', 'Itens Eletr&ocirc;nicos', '9.90', 'proto.png'),
(73, 'Monitor de Tens&atilde;o para Baterias 1S-8S', 'Fontes e Baterias', '19.00', 'tensao.png'),
(74, 'Fonte de Alimenta&ccedil;&atilde;o Vari&aacute;vel 0~32V / 0~3A HF-3203', 'Fontes e Baterias', '599.00', 'fonteali.png'),
(75, 'Fonte Industrial 12V 5A', 'Fontes e Baterias', '69.00', 'fontei.png'),
(76, 'Abc', 'Novidades', '34', 'c673e1cf8f9d9bff46137827c592470e.jpg'),
(77, 'Outros', 'tecn', '233', '34c34e690724d477ef14af88b67f7cea.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `codusuario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codusuario`, `nome`, `celular`, `email`, `senha`) VALUES
(1, 'Ana', '215905409590', 'ana@gmail.com', '123'),
(2, 'Maria', '210949034390', 'maria@gmail.com', '123'),
(3, 'JosÃ©', '2109493490', 'jose@gmail.com', '123'),
(4, 'Naira', '2159090', 'naira@gmail.com', '123454'),
(5, 'Marcos', '21003030', 'marcos@gmail.com', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acesso_restrito`
--
ALTER TABLE `acesso_restrito`
  ADD PRIMARY KEY (`pk_restrito`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codpedido`),
  ADD KEY `codproduto` (`codproduto`),
  ADD KEY `codcliente` (`codcliente`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codproduto`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acesso_restrito`
--
ALTER TABLE `acesso_restrito`
  MODIFY `pk_restrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `codproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produto` (`codproduto`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
