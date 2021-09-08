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