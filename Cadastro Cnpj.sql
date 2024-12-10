create database clientespj;

use clientespj;


create table cadastropj (
cnpj int primary key,
insc_estadual varchar(30),
cnae varchar(10),
status enum('matriz', 'filial'), 
tel varchar(11),
resp_imediato varchar(20),
areas_de_interesse set('vendas', 'recrutamento e seleção', 'fornecimentos', 'promoções', 'newsletter', 'novosprodutos', 'garantia', 'eventos'),
foreign key (id_end) references cadastroend (id_end)
);

create table cadastroend (
id_end int primary key auto_increment,
endereco varchar(50),
num varchar(10),
compl varchar(20),
bairro varchar(20),
cidade varchar(30),
cep varchar(10),
uf varchar(2)
);

create table cadstrotel (
id_tel int primary key auto_increment,
tel varchar(11),
cnpj varchar(14),
foreign key (cnpj) references cadastropj (cnpj)
);



