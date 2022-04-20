#Atividade Generation Brasil

create database db_historico_escolar;

use db_historico_escolar;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
serie varchar(255) not null,
nota1 double not null,
nota2 double not null,
media double not null,
primary key (id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Lucas",10,"Quinta série",5,9,7);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Mariana",9,"Quarta série",4,7,5.5);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Creusa",11,"Sexta série",6,10,8);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Eduarda",15,"Oitava série",2,10,6);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Maria",7,"Segunda série",3,5,4);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Pedro",13,"Sétima série",4,9,6.5);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Jorge",12,"Sexta série",5,9,7);

insert into tb_estudantes(nome,idade,serie,nota1,nota2,media)
values("Artur",10,"Quinta série",5,9,7);

select * from tb_estudantes where media >= 7;

select *from tb_estudantes where media < 7;

update tb_estudantes set idade = 8 where id = 4;

drop table tb_estudantes;

