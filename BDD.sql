create database exe1;

use exe1;

create table tb_pais (
cd_pais int auto_increment primary key, 
nm_pais varchar(40) not null
);

create table tb_estado1 (
cd_estado int auto_increment primary key,
nm_estado varchar(40) not null,
id_pais int not null,
foreign key ( id_pais) references tb_pais (cd_pais)
);

create table tb_cidade2 (
cd_cidade int auto_increment primary key,
nm_cidade varchar(40) not null,
id_estado1 int not null,
foreign key (id_estado1) references tb_estado1 (cd_estado)
);

select * from tb_pais;

insert tb_pais (nm_pais) values 
("Brasil"),
("México"),
("Chile"),
("Colômbia");

insert tb_estado1 (nm_estado,id_pais) values
("São Paulo",1),
("Rio de Janeiro",1),
("Paraná",1);

select * from tb_estado1;

insert tb_cidade2 (nm_cidade, id_estado1) values 
("Peruíbe",1),
("Itanhaém",1),
("Praia Grande",1);

insert tb_cidade2 (nm_cidade, id_estado1) values 
("Parati",2),
("Rio de Janeiro",2),
("Niterói",2);

insert tb_cidade2 (nm_cidade, id_estado1) values
("Curitiba",3),
("Foz do Iguaçu",3),
("Cascavel",3);

select nm_cidade,nm_estado,nm_pais
from tb_cidade2, tb_estado1,tb_pais
where tb_cidade2.id_estado1=tb_estado1.cd_estado
and tb_estado1.id_pais=tb_pais.cd_pais;

insert tb_estado1 (nm_estado, id_pais) values 
("Jalisco",2),
("Chiapas",2),
("Sonora",2),
("Valle Nevado",3),
("Cabo Horn",3),
("Anakema",3);

select *from tb_pais;

select nm_cidade,nm_estado,nm_pais
from tb_cidade2, tb_estado1,tb_pais
where tb_cidade2.id_estado1=tb_estado1.cd_estado
and tb_estado1.id_pais=tb_pais.cd_pais;


