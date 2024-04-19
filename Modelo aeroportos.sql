create database if not exists vooscc1mb;
use vooscc1mb;

create table if not exists passageiros(
cod_passageiros varchar (15),
nome varchar(20),
sobrenome varchar(50),
data_nasc date,
nacionalidade varchar (45)
);

create table if not exists reserva_de_voos(
cod_reserva varchar (15) primary key,
data_reserva varchar (45) not null,
forma_pagamento varchar (10),
valor_total decimal (10, 2)
);

create table if not exists cias_aereas(
id_cia int primary key,
nome varchar(45) not null,
CNPJ varchar(11) not null
);

create table if not exists aeronave(
cod_aeronave int primary key,
modelo varchar (45) not null,
fabricante varchar (30) not null,
ano year,
quantidade_assentos int not null,
id_cia int not null, 
foreign key (id_cia) references cias_aereas
);


create table if not exists aeroporto(
cod_aeroportos varchar(15) primary key,
cod_partida int primary key,
cod_chegada int primary key,
nome_aeroporto varchar(45) not null,
capacidade_de_aeronaves varchar(45) not null,
quantidade_de_pistas int not null
);

create table if not exists voos(
id_voos int not null,
assento varchar(45) primary key,
data_partida date,
data_chegada_prev date,
hora_partida time,
hora_chegada_prev time,
cod_aeronave int,
cod_partida int,
cod_chegada int,
id_cia int,
foreign key (cod_aeronave) references aeronave,
foreign key (cod_partida) references aeroporto,
foreign key (cod_chegada) references aeroporo,
foreign key (id_cia) references cias_aereas
);

create table if not exists passageiros_reservas(
cod_passageiros varchar(15) not null,
cod_reserva int not null, 
foreign key (cod_passageiros) references passageiros,
foreign key (cod_reserva) references reservas_de_voos
);

create table if not exists voos_reservas(
id_voos int not null,	
cod_aeronave int not null,
cod_partida int not null,
cod_chegada int not null,
id_cia int not null,
assento int not null,
cod_reserva int not null,
foreign key (id_voos) references voos,
foreign key (cod_aeronave) references aeronave,
foreign key (cod_partida) references aeroporto,
foreign key (cod_chegada) references aeroporto,
foreign key (id_cia) references cias_aereas,
foreign key (assento) references voos,
foreign key (cod_reserva) references passageiros_reservas
);