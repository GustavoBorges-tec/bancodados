/*
  informações sobre usuário
  @author Gustavo Borges
*/


-- Pesquisar bancos de dados disponíveis
show databases;

-- Criando um banco de dados
create database dbinfox;
show databases;

-- Remover um banco de dados
drop database dbinfox;

-- Selecionar o banco de dados
use dbinfox;


-- Criando uma tabela no baco de dados
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

describe usuarios;
-- Verificar tabelas disponíveis no banco
show tables;

insert into usuarios (usuario, login, senha)
values ('Gustavo','admin','1234');

alter table usuarios modify senha varchar(250);

alter table usuarios modify login varchar(50);

-- Armazenando um campo com criptografia
insert into usuarios(usuario, login, senha)
values ('Bruce','bruce@usuario',md5('12345'));

insert into usuarios(usuario, login, senha)
values ('Mario','mario@usuario',md5('12345'));

insert into usuarios(usuario, login, senha)
values ('Alef','alef@usuario',md5('12345'));

insert into usuarios(usuario, login, senha)
values ('Banner','banner@usuario',md5('12345'));

insert into usuarios(usuario, login, senha)
values ('Chris','chris@usuario',md5('12345'));


select * from usuarios;

-- comando usado para remover uma tabela
drop table usuarios;


-- Tabela de clientes (clientes da assistência técnica)
create table clientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null
);

describe clientes;

-- Tabela de ordem de serviços
create table tbOs(
os int primary key auto_increment, 
equipamento varchar (250) not null,
defeito varchar (250) not null,
dataOs timestamp default current_timestamp,
statusOs varchar (50) not null,
valor decimal (10,2) not null,
idcli int not null,
foreign key(idcli) references clientes (idcli)
);

insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',80,1);

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

select * from tbOs;

select * from clientes;
