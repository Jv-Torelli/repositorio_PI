create database ProjetoSprint1;
use ProjetoSprint1;
drop table PI;
CREATE TABLE PI (
    idProjeto INT PRIMARY KEY AUTO_INCREMENT,
    tema VARCHAR(30),
    cliente VARCHAR(40)
);

insert into PI (idProjeto, tema, cliente) values
(default, 'Incendio Florestais', 'Prefeitura'),
(default, 'Incendio Florestais', 'Prefeitura interior SP');

select * from PI;
drop table sensor;
CREATE TABLE sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    árealoc VARCHAR(100),
    temperatura DECIMAL(3,1), 
    umidade int
);
select * from sensor;
insert into sensor (id, nome, árealoc, temperatura, umidade) values
(default, 'DHT11', 'A1', 35.0, 50),
(default, 'DHT11', 'A2', 40.4, 40);

select * from sensor;
drop table usuario;
CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(30),
    senha VARCHAR(40),
    orgao varchar(50),
    area varchar(50)
);

insert into  usuario (id, usuario, senha, orgao, area) values
(default, 'cliente', 'criterio do cliente', 'Prefeitura', 'APA1'),
(default, 'Gerente da empresa', 'senha', 'Defesa civil', 'Areas privadas');

select * from usuario;
-- d