create database if not exists hospital;
use hospital;

create table if not exists pacientes(
CPF int(11) primary key,
nome varchar(50) not null,
data_nascimento date not null,
telefone varchar(45) not null,
Email varchar(45) not null
);

create table if not exists departamento(
cod_especialidade int primary key,
nome_especialidade varchar(45) not null
);

create table if not exists medicos(
CRM int primary key,
UF char not null,
nome varchar (45) not null,
email varchar (45) not null,
telefone varchar (45),
cod_especialidade int not null,
foreign key (cod_especialidade) references departamento(cod_especialidade) 
);

create table if not exists consultas(
id_consultas int primary key,
anamnese text not null,
Data_ date not null,
Hora time not null,
CPF int(11) not null,
CRM int not null,
UF char not null, 
cod_especialidade int not null,
foreign key (CPF) references pacientes(CPF), 
foreign key (CRM) references medicos(CRM),
foreign key (UF) references medicos(UF), 
foreign key (cod_especialidade) references consultas(cod_especialidade) 
);