create database Monitoramento;

use monitoramento;

create table Usuários (
IdOrgão int primary key auto_increment,
Orgão varchar(50),
Nome varchar(45) not null,
CPF varchar(14) unique, 
RG varchar(11) unique,
email varchar(70) unique
);

insert into Usuários values
(default, 'Prefeitura de São Paulo', 'Fulano', '123.456.789-10', '963852140', 'fulanodasilva@gmail.com'),
(default, 'Secretaria do Meio Ambiente', 'Siclano', '321.654.987-20', '871591568', 'siclanodosantos@gmail.com'),
(default, 'Defesa Civil', 'Beltrano', '449.303.258-85', '00124345X', 'beltranodesilveira@gmail.com'),
(default, 'Corpo de Bombeiros', 'Alguém', '059.254.115-10', '252639879', 'alguemmendes@gmail.com');

select * from usuários;

alter table usuários add column senha varchar(100); 

update usuários set senha = 'xxxxxxxxxxx'
	where idOrgão between 1 and 4;

create table sensor (
idSensor int primary key auto_increment, 
Sensor varchar(10),
TemperaturaAmbiente float, 
UmidadeSolo float,
StatusSensor varchar(10)
constraint Stats check (StatusSensor in('Ativo', 'Inativo', 'Manutenção'))  
);

insert into sensor values
(default, 'DHT11', '24.8', '75', 'Manutenção'),
(default, 'DHT11', '35.7', '40', 'Ativo'),
(default, 'DHT22', '15.6', '90.3', 'Ativo'),
(default, 'DHT22', '0', '0', 'Inativo');

select * from sensor;

select * from sensor where temperaturaAmbiente < '25';


create table fauna (
idAnimais int primary key auto_increment,
Nome varchar(50),
NomeCientifico varchar(60)
);

insert into fauna values
(default, 'Gato-do-mato', 'L. tigrinus'),
(default, 'Pavão-do-mato', 'Pyroderus scutatus'),
(default, 'Anta', 'Tapirus terrestris'),
(default, 'Bugio-ruivo', 'Alouatta guariba'),
(default, 'João-de-barro', 'Furnarius rufus');









