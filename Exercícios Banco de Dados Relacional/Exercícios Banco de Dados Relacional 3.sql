create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
receita varchar(255) not null,
primary key(id)
);

select * from tb_categorias;

drop table tb_categorias;

insert into tb_categorias (descricao,receita) values ('Antialérgico', 'Sem receita');
insert into tb_categorias (descricao,receita) values ('Antiviral', 'Com receita');
insert into tb_categorias (descricao, receita) values ('Remédio para dor', 'Sem receita');
insert into tb_categorias (descricao, receita) values ('Remédio para TDAH', 'Com receita');

create table tb_produtos(
id bigint auto_increment,
preco double not null,
marca varchar(20) not null,
tipo varchar(20) not null,
id_categorias bigint not null,
primary key (id),
foreign key (id_categorias) references tb_categorias(id)
);

select * from tb_produtos;

drop table tb_produtos;

insert into tb_produtos (preco, marca, tipo, id_categorias) values (10.99, 'Genérico', 'Comprimido',1);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (5.99, 'Genérico', 'Pílula',3);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (12.99, 'Genérico', 'Comprimido',1);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (15.99, 'Genérico', 'Gotas',3);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (29.99, 'Original', 'Uso Tópico',3);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (59.99, 'Original', 'Comprimido',2);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (129.99, 'Original', 'Comprimido',4);
insert into tb_produtos (preco, marca, tipo, id_categorias) values (9.99, 'Genérico', 'Pílula',1);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco < 60 and preco > 5;

select * from tb_categorias where descricao like '%c%';

select * from tb_categorias inner join tb_produtos on tb_produtos.id_categorias = tb_categorias.id;

select tb_categorias.descricao, tb_produtos.preco, tb_produtos.marca, tb_produtos.tipo, tb_categorias.id from tb_categorias 
inner join tb_produtos on tb_produtos.id_categorias = tb_categorias.id;
