#Atividade Generation Brasil

create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome char(255) not null,
idade int not null,
cpf bigint(11) not null,
cargo varchar(255) not null,
salario double,
primary key (id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome,idade,cpf,cargo,salario)
values ("Lucas",24,09674655409,"Gestor","5400");

insert into tb_funcionarios(nome,idade,cpf,cargo,salario)
values ("Mariana",22,00100200304,"Auxiliar","2000");

insert into tb_funcionarios(nome,idade,cpf,cargo,salario)
values ("Maria",21,12312312345,"Auxiliar","2000");

insert into tb_funcionarios(nome,idade,cpf,cargo,salario)
values ("Pedro",20,78978978901,"Estagiário","1000");

insert into tb_funcionarios(nome,idade,cpf,cargo,salario)
values ("Marcos",19,56756756789,"Estagiário","1000");

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 6000 where id = 1;

select * from tb_funcionarios;

drop table tb_funcionarios;