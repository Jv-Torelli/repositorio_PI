CREATE DATABASE projetopi;
USE projetopi;

CREATE TABLE cliente (
    idcli INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(30),
    senha VARCHAR(30),
    orgao VARCHAR(20),
    area VARCHAR(60)
);

INSERT INTO cliente VALUES
(default, 'prefeitura de SP', 'senha123', 'prefeitura', 'APA1'),
(default, 'prefeitura de go', 'senha1234', 'prefeitura', 'APA2');
SELECT * FROM cliente;


CREATE TABLE sensor (
idsen INT PRIMARY KEY AUTO_INCREMENT,
nomesen VARCHAR(20),
gridsen varchar(20),
tempsen DECIMAL(3,1),
umidade INT
);

INSERT INTO sensor VALUES
(default, 'DHT11', 'grid1', 24.5, 40),
(default, 'DHT11', 'grid2', 50.0, 60);
SELECT * FROM sensor;


CREATE TABLE agentes (
idAg INT PRIMARY KEY AUTO_INCREMENT,
nomeAg VARCHAR(30),
endBase VARCHAR (60),
constraint chkAg check(nomeAg in ('Polícia', 'Bombeiros', 'Defesa civil'))
);

INSERT INTO agentes VALUES
(default, 'Polícia', 'Avenida Vasco da Gama, 157'),
(default, 'Bombeiros', 'Rua 1, 123');
SELECT * FROM agentes;