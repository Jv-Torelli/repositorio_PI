create database projetoSprint1;
use projetoSprint1;


--  TABELA 1  --

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(60) not null,
senha varchar(20) not null,
orgao varchar(60) not null,
cargo varchar(30) not null,
nivelAcesso char(1)not null,
constraint chkNivel check(nivelAcesso in('A', 'B', 'C','D'))
);

insert into usuario(nome, senha, orgao, cargo, nivelAcesso) values
('Alexandre Soares', '@adm2025', 'SPTECH','Administrador', 'A'),
('Thomaz Toledo', 'Sp2025avante#', 'Companhia Ambiental do Estado de São Paulo','Presidente', 'B'),
('Clezio Marcos de Nardin', '96Nardin#', 'Instituto Nacional de Pesquisa','Diretor', 'A');

select concat(nome, ' do órgão ', orgao, ' possui nivel de acesso ', nivelAcesso) as 'Nome e nível de acesso' from usuario;



--  tabela 2  --

create table sensor(
idSensor int primary key auto_increment,
serialNumber char(12) unique not null,
localSensor varchar(80) not null,
temperatura decimal(3,1) not null,
umidade int not null,
statusSensor varchar(20)
constraint chkStatus check(statusSensor in('Ativo', 'Inativo', 'Em manutenção')),
dataInfo datetime
);

drop table sensor;

insert into sensor (serialNumber,localSensor,temperatura,umidade,statusSensor, dataInfo) values
('A1B2C4D5E6F7', 'Bacia Hidrográfica do Rio Batalha', 28.5, 30, 'Ativo', current_timestamp()),
('A1B2C4G2E6T1', 'Bairro da Usina', 27.6, 50, 'Inativo', current_timestamp()),
('A1B2P7G2E6L1', 'Cajamar', 0, 0, 'Em manutenção', current_timestamp());

select concat('O sensor localizado em ', localSensor, ' se encontra ', statusSensor) as Sensores from sensor;
select * from sensor;


--  TABELA 3  --

create table funcionarios(
idFuncionario int primary key auto_increment,
nome varchar(60),
setor varchar(40),
cargo varchar(50),
contratacao date
);


insert into funcionarios (nome, setor, cargo, contratacao) values
('Alexandre Soares', 'Empresarial', 'Dono', '2025-01-29'),
('Guilherme Toledo', 'RH', 'Gestor', '2025-01-09'),
('Guilherme Gomes', 'Desenvolvimento', 'QA', '2025-02-10');

select * from funcionarios;