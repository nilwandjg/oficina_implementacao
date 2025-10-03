CREATE SCHEMA IF NOT EXISTS `oficina`;
USE `oficina` ;

-- cliente
CREATE TABLE `cliente` (
  `idCliente` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`)
);

-- veiculo
CREATE TABLE `veiculo` (
  `placa` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(45),
  `marca` VARCHAR(45),
  `ano` VARCHAR(45),
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`placa`, `idCliente`),
  UNIQUE KEY `uk_placa` (`placa`),
  FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
);

-- mecanico
CREATE TABLE `mecanico` (
  `idMecanico` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `especialidade` VARCHAR(45) NULL,
  PRIMARY KEY (`idMecanico`)
);

-- equipe
CREATE TABLE `equipe` (
  `idEquipe` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idEquipe`)
);

-- ordem_servico
CREATE TABLE `ordem_servico` (
  `idOrdem_de_servico` INT NOT NULL,
  `numero` VARCHAR(45) NULL,
  `dataEmissao` DATE,
  `valor` DECIMAL(10,2),
  `status` VARCHAR(45) NULL,
  `data_conclusao` DATE,
  `veiculo_placa` VARCHAR(10) NOT NULL,
  `idEquipe` INT NOT NULL,
  PRIMARY KEY (`idOrdem_de_servico`),
  CONSTRAINT `fk_Ordem_de_servico_Veiculo1`
    FOREIGN KEY (`veiculo_placa`) REFERENCES `veiculo` (`placa`),
  CONSTRAINT `fk_Ordem_de_servico_Equipe1`
    FOREIGN KEY (`idEquipe`) REFERENCES `equipe` (`idEquipe`)
  );

-- peca
CREATE TABLE `peca` (
  `idPeca` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `valor_unitario` DECIMAL(10,2),
  PRIMARY KEY (`idPeca`));

-- equipe_mecanico
CREATE TABLE `equipe_mecanico` (
  `idMecanico` INT NOT NULL,
  `idEquipe` INT NOT NULL,
  PRIMARY KEY (`idMecanico`, `idEquipe`),
  CONSTRAINT `fk_Mecanico_has_Equipe_Mecanico1`
    FOREIGN KEY (`idMecanico`) REFERENCES `mecanico` (`idMecanico`),
  CONSTRAINT `fk_Mecanico_has_Equipe_Equipe1`
    FOREIGN KEY (`idEquipe`) REFERENCES `equipe` (`idEquipe`)
  );

-- ordem_de_servico_has_peca
CREATE TABLE `ordem_de_servico_has_peca` (
  `idOrdem_de_servico` INT NOT NULL,
  `idPeca` INT NOT NULL,
  PRIMARY KEY (`idOrdem_de_servico`, `idPeca`),
  CONSTRAINT `fk_Ordem_de_servico_has_Peca_Ordem_de_servico1`
    FOREIGN KEY (`idOrdem_de_servico`) REFERENCES `ordem_servico` (`idOrdem_de_servico`),
  CONSTRAINT `fk_Ordem_de_servico_has_Peca_Peca1`
    FOREIGN KEY (`idPeca`) REFERENCES `peca` (`idPeca`)
  );