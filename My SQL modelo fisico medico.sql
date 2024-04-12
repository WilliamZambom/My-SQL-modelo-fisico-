create database if not exists LivrariaCC1MB;
use LivrariaCC1MB;

create table if not exists riscos_ocupacionais(
id_riscos int(11) primary key,
nome varchar(45) not null
);

create table if not exists cargo (
id_cargo int(11) primary key,
nome varchar(50) not null
);

create table if not exists resultado_exame (
id_tipo_resultado_exame int(11) primary key, 
tipo varchar (30) not null 
);

create table if not exists tipo_exame (
id_tipo_exame int(11) primary key,
tipo varchar(50) not null 
);

create table if not exists medico (
 id_medico int(11),
 crm int(11),
 nome varchar(100),
 cpf varchar(100),
 especialidade varchar(20),
 data_nascimento date,
 endereco varchar(200),
 telefone varchar(20) 
 );

create table if not exists exame (
id_exame int(11) primary key,
especialidade varchar(50),
data_realizacao date 
-- chave estrangeira
);

