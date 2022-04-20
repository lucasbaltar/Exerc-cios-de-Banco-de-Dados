#Atividade Generation Brasil

create database db_produtos;

use db_produtos;

create table tb_produtos(
id bigint auto_increment,
produto char(255) not null,
marca char(255) not null,
cor char(255) not null,
preco double not null,
mesDeEntrada int not null,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Sapato","Nike","Branco",299.90,12);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Camisa","Nike","Vermelha",59.90,01);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Camisa","Adidas","Branca",55.90,01);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Sapato","Adidas","Azul",399.90,02);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Legging","Nike","Cinza",99.90,03);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Legging","Puma","Preta",129.90,07);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Sapato","Puma","Verde",159.90,01);

insert into tb_produtos(produto,marca,cor,preco,mesDeEntrada)
values ("Camisa","Puma","Rosa",49.90,05);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 599.90 where id = 5;

update tb_produtos set preco = 699.90 where id = 8;


