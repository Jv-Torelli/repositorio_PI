create database projetoPI;

use projetoPI;

-- TABELA USUÁRIOS

create table usuarios(
	idUsuario int primary key auto_increment,
    nome varchar(30),
    sobrenome varchar(40),
    cpf int,
    email varchar(40) unique,
    username varchar(20) unique,
    senha varchar(30),
    orgaoMunicipal varchar(40),
    nivelAcesso tinyint, 
    dtCriacao datetime default current_timestamp
    );

alter table usuarios add constraint chkOrgao check ( orgaoMunicipal in('Prefeitura','Corpo de Bombeiros','Defesa Civil','Secretaria do Verde e do Meio Ambiente','Administrador'));
alter table usuarios add constraint chkNivel check ( nivelAcesso in(0,1,2,3));

insert into usuarios values
	(default,'Guilherme','Toledo',00000000000,'teste1@teste.com','guilherme','teste789','Administrador',0,default),
    (default,'Alexandre','Soares',00000000000,'teste2@teste.com','alexandre','teste456','Administrador',0,default),
	(default,'André','Ferreira',00000000000,'teste3@teste.com','andre','teste123','Administrador',0,default);

-- TABELA SENSORES

use projetoPI;

create table sensores(
	idSensor int primary key auto_increment,
    nomeSensor varchar(30),
    modeloSensor varchar(30),
    numeroSerial varchar(30) unique,
    statusSensor varchar (10),
    dtManutencao date,
    gridLocalizacao varchar(4)
    );
    
alter table sensores add constraint chkStatus check ( statusSensor in('Ativo','Manutenção','Pendente instalação','Pendente manutenção'));

insert into sensores values
	(default,'Bororé-Colônia 1','DHT11', 'ABCDEFGH', 'Ativo', '2025-02-24','A1'),
    (default,'Bororé-Colônia 2','DHT11', 'IJKLMNOP', 'Ativo', '2025-03-24','A2');
    
-- TABELA MEDIÇÃO

create table medidor(
	idMedicao int primary key auto_increment,
    idSensor int,
    horario datetime default current_timestamp,
	temperatura decimal(4,2),
    umidade decimal(4,2),
    gridLocalizacao varchar(4)
    );
    
    
    insert into medidor values
    (default,1,default,35.5,0.25,'A2'),
    (default,2,default,40.5,0.15,'A5');
    
-- TABELA HISTÓRICO DE RISCO
    
create table historicoRisco(
	idOcorrencia int primary key auto_increment,
    gridLocalizacao varchar(4),
    horario datetime default current_timestamp,
	temperatura decimal(4,2),
    umidade decimal(4,2),
    nivelRisco varchar(20)
    );
    
	alter table historicoRisco add constraint chkRisco check ( tipoRisco in('crítico','incêndio'));