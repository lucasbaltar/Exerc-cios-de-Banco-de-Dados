create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
massa varchar(30) not null,
onde_comer varchar(30) not null,
primary key(id)
);

drop table tb_categorias;

insert into tb_categorias (massa, onde_comer) values ('Tradicional','Restaurante');
insert into tb_categorias (massa, onde_comer) values ('Fina','Casa');
insert into tb_categorias (massa, onde_comer) values ('Fina','Restaurante');
insert into tb_categorias (massa, onde_comer) values ('Tradicional','Casa');

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(30) not null,
tamanho varchar(30) not null,
adicional varchar(30),
bebida varchar(30),
preco double not null,
id_categorias bigint not null,
primary key (id),
foreign key (id_categorias) references tb_categorias(id)
);

drop table tb_pizzas;

insert into tb_pizzas(sabor, tamanho, adicional,bebida,preco,id_categorias) values ('Calabresa', 'Grande', 'Queijo Extra', 'Refrigerante',59.90,4);
insert into tb_pizzas(sabor, tamanho, bebida,preco,id_categorias) values ('Frango', 'Média', 'Suco',39.90,4);
insert into tb_pizzas(sabor, tamanho, bebida,preco,id_categorias) values ('Rúcula', 'Pequena', 'Chá',19.90,2);
insert into tb_pizzas(sabor, tamanho, adicional,bebida,preco,id_categorias) values ('Pepperoni', 'Grande', 'Pepperoni', 'Refrigerante',65.90,1);
insert into tb_pizzas(sabor, tamanho, adicional,preco,id_categorias) values ('Margherita', 'Pequena', 'Suco',19.90,1);
insert into tb_pizzas(sabor, tamanho, bebida,preco,id_categorias) values ('Mussarela', 'Média', 'Refrigerante',29.90,3);
insert into tb_pizzas(sabor, tamanho, adicional,preco,id_categorias) values ('Calabresa', 'Pequena', 'Água',22.90,4);
insert into tb_pizzas(sabor, tamanho, adicional, bebida,preco,id_categorias) values ('Quatro Queijos', 'Grande', 'Cebola', 'Suco',49.90,2);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco > 50 and preco < 100;
select * from tb_pizzas where sabor like '%m%';

select * from tb_categorias inner join tb_pizzas on tb_pizzas.id_categorias = tb_categorias.id;

select tb_categorias.id, tb_categorias.massa, tb_categorias.onde_comer, tb_pizzas.sabor, tb_pizzas.tamanho, tb_pizzas.adicional,
tb_pizzas.bebida, tb_pizzas.preco from tb_categorias inner join tb_pizzas on tb_pizzas.id_categorias = tb_categorias.id;

select tb_categorias.id, tb_categorias.massa, tb_categorias.onde_comer, tb_pizzas.sabor, tb_pizzas.tamanho, tb_pizzas.adicional,
tb_pizzas.bebida, tb_pizzas.preco from tb_categorias inner join tb_pizzas on tb_pizzas.id_categorias = tb_categorias.id where preco < 50;


