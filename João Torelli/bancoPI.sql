CREATE DATABASE projetoSprint1;

USE projetoSprint1;

INSERT INTO projeto (nomeProjeto, descricaoProjeto)
VALUES ('Sem definição', 'O projeto terá como objetivo medir dados de temperatura para verificcar se há um possível incendio');

CREATE TABLE usuarios (
idUsuario INT PRIMARY KEY auto_increment,
nomeUsuario VARCHAR(50),
nomeOrgaoUsuario VARCHAR (40), 
senhaUsuario VARCHAR (12)UNIQUE,
cpfUsuario CHAR(14) UNIQUE,
emailUsuario VARCHAR(60),
nivelAcessoUsuario INT CONSTRAINT chkAcesso check (nivelAcessoUsuario in(0,1,2))
);

INSERT INTO usuarios (nomeUsuario,nomeOrgaoUsuario,senhaUsuario, cpfUsuario,emailUsuario, nivelAcessoUsuario)
VALUES ('Fulano da Silva', 'Prefeitura','Fulano0907', '302.873.561-39', 'fulanodasilva7@gmail.com', 1),
( 'Ciclano de Souza', 'Defensoria ambiental','CiclanoGrau8', '322.193.236-42', 'ciclanodsouza112@gmail.com', 0);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
nomeSensor VARCHAR (30),
dadosTemperaturaSensor FLOAT,
dadosUmidadeSensor FLOAT,
numSerieSensor CHAR (15),
localSensor VARCHAR (60),
statusSensor VARCHAR (30) CONSTRAINT chkStatus check (statusSensor in('ativo', 'inativo', 'em manutenção'))
);


INSERT INTO sensor (nomeSensor, dadosTemperaturaSensor, dadosUmidadeSensor, numSerieSensor, localSensor,statusSensor)
VALUES ('dht11', '30.02', '65', '123456789918273', 'Bororé-Colonia', 'em manutenção'),
	   ('dht22', '70.16', '20','123456789914384', 'Bororé-Colonia', 'ativo');
       
       
CREATE TABLE apaProtecao(
idApaProtecao INT PRIMARY KEY auto_increment,
nomeApaProtecao VARCHAR(40),
nomeEspecieApaProtecao VARCHAR(50),
qtdEspecieApaProtecao INT
);

  
  INSERT INTO apaProtecao (nomeApaProtecao, nomeEspecieApaProtecao,qtdEspecieApaProtecao)
  VALUES ('Bororé-Colonia', 'Tucano', 15),
		 ('Bororé-Colonia', 'Mata-Atlântica', 73);
  
       SELECT * FROM sensor;
       SELECT * FROM projeto;
       SELECT * FROM usuarios;