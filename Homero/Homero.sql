create database projeto;
use projeto;

create table Sensores (
idSensor int primary key auto_increment,
grid varchar(4),
statusSensor varchar (40),    
constraint schkStatus 
	check (statusSensor in ('Ativo', 'Inativo', 'Manutenção')),
dtintalacao date 
);

CREATE TABLE Usuario (
iduser INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
emaillogin varchar(30) unique,
senha varchar(30),
endereco VARCHAR(100) NULL,  -- Pode ser NULL para visitantes
Empresa varchar(30),
constraint schkfunc
check (Empresa in ('Bombeiros', 'Governo', 'Policia')),
funcao varchar(30),
telefone VARCHAR(15) NULL
);

create table registro (
idregistro int primary key auto_increment,
temp decimal(5,2),
umidade decimal (0,9),
grid varchar (4)
);

INSERT INTO Sensores  VALUES
('H3', 'Ativo', '2024-10-26'),
('A1', 'Manutenção', '2024-11-15');

INSERT INTO Usuario  VALUES
('João Silva', 'joao.silva@governo.com', 'senha123', 'Rua Principal, 123', 'Governo', 'Analista', '11999999999'),
('Maria Oliveira', 'maria.oliveira@bombeiros.com', 'senha456', 'Avenida Central, 456', 'Bombeiros', 'Chefe de Equipe', '11888888888');

INSERT INTO registro  VALUES
(25.5, 60.3, 'A1'),
(30.2, 75.8, 'B2');


