/**
Agenda de contatos
@author Gustavo Borges
*/

-- Pesquisar bancos de dados disponíveis
show databases;

-- Pesquisar tabelas no banco de dados
show tables;

-- Criando um banco de dados
create database dbagenda;
show databases;

-- Remover um banco de dados
drop database dbagenda;

-- Selecionar o banco de dados
use dbagenda;


-- Criando uma tabela no baco de dados
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50)
);

-- Verificar tabelas disponíveis no banco
show tables;

-- Comando usado para descrever a tabela
describe contatos;

-- Comanod usado para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;

-- Comando usado para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);

-- Comando usado para adicionar um novo campo em um lugar especifíco 
alter table contatos add column fone2 varchar(20) after fone;

-- Comando usado para modificar o tipo de dado e validações do campo
alter table contatos modify fone2 varchar(20);
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;

-- Comando usado para apagar um campo da tabela
alter table contatos drop column obs;

-- comando usado para remover uma tabela
drop table contatos;

/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)

*/

/* CRUD CREATE (Insert) */

insert into contatos (nome,fone,email)
values ('Bruce Wayne','9998-1112','bruce@wayne.com');

insert into contatos (nome,fone)
values ('Beatriz','99999-2222', 'beatriz@email.com');

insert into contatos (nome,fone,email)
values ('Bill Gates','99999-1111','bill@email.com');

insert into contatos (nome,fone)
values ('Barry','99999-2222');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');

insert into contatos (nome,fone,email)
values('Larry','99999-44444','larry@gmail.com');

insert into contatos (nome,fone,email)
values('Messi','99999-55555','messi@gmail.com');

insert into contatos (nome,fone,email)
values('Cristiano Ronaldo','99999-66666','cr7@gmail.com');

insert into contatos (nome,fone)
values('Julius','99999-77777');


/* CRUD READ (Select) */
-- selecionar todos os registros da tabela
select * from contatos;



-- selecionar todos registros em ordem alfabética (asc desc)
select * from contatos order by nome asc;
select * from contatos order by nome desc;



-- selecionar um registro específico
select * from contatos where nome='Ana Maria';
select * from contatos where id=1;



-- selecionar campos específicos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;



-- filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';
select * from contatos where nome='Bruce Wayne';


/* CRUD UPDATE (update)*/
-- alterando um registro específico da tabela (usar sempre o id "Segurança")
update contatos set fone='91234-8090' where id=4;
update contatos set email='bia@email.com' where id=2;

-- alterando todos os dados do registro 
update contatos set nome='Willian Gates', fone='32456-9000',email='bill@outlook.com' where id=6;
 
 /* CRUD DELETE (deletar)*/
 -- excluindo um registro da tabela
 delete from contatos where id=8;
