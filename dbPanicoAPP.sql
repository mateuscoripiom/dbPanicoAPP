create database dbPanico;
use dbPanico;

create table tbUser(
	idUser int primary key auto_increment,
	nome varchar(50) not null,
    senha varchar(50) not null
);

create table tbObra(
	idObra int primary key auto_increment,
    nome varchar(50) not null,
    descricao varchar(200) not null,
    imagem varchar(100) not null,
    diretores varchar (100) not null,
    avaliacao int
);

create table tbPersonagens(
	idPerson int primary key auto_increment,
    nomePerson varchar(50) not null,
    descricaoPerson varchar(200) not null,
    imagemPerson varchar(100) not null,
    filmePerson varchar(50) not null,
    situacao int not null
);

create table tbAtor(
	idAtor int primary key auto_increment,
    nomeElenco varchar(50) not null,
    descricaoElenco varchar(200) not null, 
    imagemElenco varchar(100) not null, 
    filmeElenco int not null
);

create table tbAtorPersonagem(
	idPerson int,
    idAtor int,
    Primary Key (idPerson, idAtor),
	foreign key (idPerson) references tbPersonagens(idPerson),
	foreign key (idAtor) references tbAtor(idAtor)
);

create table tbObraPersonagem(
	idObra int,
    idPerson int,
    Primary Key (idObra, idPerson),
	foreign key (idObra) references tbObra(idObra),
	foreign key (idPerson) references tbPersonagens(idPerson)
);