create database if not exists pesquisadores;

use pesquisadores;

create table if not exists Instituicao(
idInstituicao int not null,
nomeInst varchar(45) not null,
primary key (idInstituicao)
);

create table if not exists Pesquisador(
cpf varchar(20) not null,
nome varchar(45) not null,
idInstituicao int not null,
primary key (cpf),
foreign key (idInstituicao)
references Instituicao(idInstituicao));

create table if not exists Veiculo_de_Publicacao(
idVeiculoPublicacao int not null,
nomePublic varchar(45) not null,
localPublic varchar(45) not null,
primary key (idVeiculoPublicacao)
);

create table if not exists Artigo(
idArtigo int not null,
titulo varchar(45) not null,
localPublicacao varchar(45),
numeroPags int,
idVeiculoPublicacao int not null,
primary key (idArtigo),
foreign key (idVeiculoPublicacao)
references Veiculo_de_Publicacao(idVeiculoPublicacao)
);

CREATE TABLE Artigo_has_Pesquisador (
    Artigo_idArtigo INT,
    Pesquisador_cpf VARCHAR(20),
    PRIMARY KEY (Artigo_idArtigo, Pesquisador_cpf),  -- Chave primária composta
    FOREIGN KEY (Artigo_idArtigo) REFERENCES Artigo(idArtigo),
    FOREIGN KEY (Pesquisador_cpf) REFERENCES Pesquisador(cpf)
);

insert into Instituicao values(1, 'IFSP');
insert into Pesquisador values('452.486.128-05', 'Matheus Lopes', 1);
insert into Veiculo_de_Publicacao values(1, 'Jornal do IFSP', 'Internet');
insert into Artigo values(1, 'Artigo Cientifico', 'Jornal do IFSP', 100, 1);
insert into Artigo_has_Pesquisador values(1, '452.486.128-05');

delete from Artigo_has_Pesquisador where Artigo_idArtigo = 1;
-- select * from Artigo_has_Pesquisador;