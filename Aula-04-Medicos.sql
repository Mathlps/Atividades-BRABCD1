create database if not exists consultorio;

create table if not exists medicos(
crm int not null,
cpf varchar(20) not null unique,
nome varchar(50) not null,
email varchar(50),
telefone varchar(20),
cbo int,
primary key (crm));

insert into medicos values(1111, '124.592.352-21', 'Cristina Soares', 'crisso@med.com', 11943215789, 12534);
insert into medicos values(2222, '490.867.418-35', 'Kaykão', 'kayky@med.com', 11914318466, 12534);
insert into medicos values(3333, '124.592.354-89', 'Jack Daniel', 'jack@med.com', 11978613255, 12314);

select * from medicos;