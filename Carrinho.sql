/**
Carrinho de compras
@author Gustavo Borges
*/

create database carrinhobdcompra;
show databases;

drop database carrinhobdcompra;

-- Criando uma tabela no banco de dados

use carrinhobdcompra;

create table carrinho(
id int primary key auto_increment,
produto varchar(80) not null,
valor varchar(50) not null,
quantidade int not null
);

use carrinhobdcompra;
show tables;
describe carrinho;
drop table carrinho;

alter table carrinho modify produto varchar(100)not null;

-- A linha abaixo modifica o tipo de dado de um campo
-- decimal (10,2) 10 digitos com duas casas decimais
alter table carrinho modify valor decimal(10,2) not null;


-- operações matemáticas
select sum(valor*quantidade) as total from carrinho;

insert into carrinho (produto,quantidade,valor)
values('Caneta',10,2);

insert into carrinho (produto,quantidade,valor)
values('Lápis',50,0.50);

insert into carrinho (produto,quantidade,valor)
values('Borracha',40,3);

insert into carrinho (produto,quantidade,valor)
values('Sulfite',100,0.25); 

insert into carrinho (produto,quantidade,valor)
values('Apontador',70,2);

insert into carrinho (produto,quantidade,valor)
values('Branquinho',5,1.25);

insert into carrinho (produto,quantidade,valor)
values('Fita Crepe',25,3);

insert into carrinho (produto,quantidade,valor)
values('Cartolina',200,2.50);

insert into carrinho (produto,quantidade,valor)
values('Almaço',65,1.15);

insert into carrinho (produto,quantidade,valor)
values('Canetinha',77,5.25);

select sum(valor*quantidade) as total from carrinho;

-- selecionar em ordem alfabética
select produto from carrinho order by produto asc;

select * from carrinho;

-- alterar quantidade de 2 produtos
update carrinho set quantidade='8'where id=6;
update carrinho set quantidade=7 where id=5;

 -- excluindo um registro da tabela
 delete from carrinho where id=8;
