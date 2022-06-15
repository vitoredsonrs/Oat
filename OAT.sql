create schema if not exists jogoDeLuta;
use jogoDeLuta;

create table if not exists Lutador(
	idLutador int not null auto_increment primary key,
    nome varchar(70) not null,
    idade int not null,
    altura float not null,
    peso float not null,
    vitorias int,
    derrotas int,
    empates int
);

create table if not exists Luta(
	idLuta int auto_increment not null primary key,
	rounds int not null,
    aprovada boolean not null,
	resultado enum ('Vitória','Derrota','Empate')
);

create table if not exists Apresentador(
	idApresentador int auto_increment not null primary key,
	nome varchar(70) not null,
    idade int not null
);
create table if not exists Juiz(
	idJuiz int auto_increment not null primary key,
	nome varchar(70) not null,
    idade int not null,
    experienciaComprovada int not null default '0', /* Em anos*/
    certificado varchar(20) not null /* Código de identificação do certificado*/
);

create table if not exists Torcedor(
	idTorcedor int auto_increment not null primary key,
	nome varchar(70) not null,
    cpf int,
    idade int not null
);

create table if not exists Nacionalidade(
	idNacionalidade int auto_increment not null primary key,
    nacionalidade varchar (30) not null
);

create table if not exists Categoria(
	idCategoria int auto_increment not null primary key,
    tipoCategoria varchar(50)
);

create table if not exists Torneio(
	idTorneio int not null primary key,
    classificacao enum ('Ouro','Prata','Bronze')
);

create table if not exists LocalLuta(
	localLuta int auto_increment not null primary key,
	registroAlvara varchar(20) not null,
    capacidade int not null,
    endereco varchar(70)
);

 alter table Lutador
 add column lutadorCategoria int not null,
 add constraint lutadorCategoria  foreign key(lutadorCategoria ) references Categoria(idCategoria)
    on delete restrict
    on update cascade;
    
 alter table Luta
 add column lutadores int not null,
 add constraint lutadores foreign key(lutadores) references Lutador(idLutador)
    on delete restrict
    on update cascade;
    
 alter table Luta
 add column juiz int not null,
 add constraint juiz foreign key(juiz) references Juiz(idJuiz)
    on delete restrict
    on update cascade;
    
 alter table Luta
 add column apresentador int not null,
 add constraint apresentador foreign key(apresentador) references Apresentador(idApresentador)
    on delete restrict
    on update cascade;

 alter table Luta
 add column lutaLocal int not null,
 add constraint lutaLocal foreign key(lutaLocal) references localLuta(localLuta)
    on delete restrict
    on update cascade;
   
 alter table Apresentador
 add column nacionalidade int not null,
 add constraint nacionalidade foreign key(nacionalidade) references Nacionalidade(idnacionalidade)
    on delete restrict
    on update cascade;
    
 alter table Juiz
 add column juizNacionalidade int not null,
 add constraint juizNacionalidade foreign key(juizNacionalidade) references Nacionalidade(idNacionalidade)
    on delete restrict
    on update cascade;

    
 alter table Luta
 add column torneio int not null,
 add constraint torneio foreign key(torneio) references Torneio (idTorneio)
    on delete restrict
    on update cascade;

insert into nacionalidade values (default, 'Brasileiro(a)');
insert into nacionalidade values (default, 'Frances(a)');
insert into nacionalidade values (default, 'EUA');

insert into categoria values (default, 'Peso Pena');
insert into categoria values (default, 'Peso Médio');
insert into categoria values (default, 'Peso Pesado');

insert into apresentador values (default, 'Julio Gonçalves', '32', 01);
insert into lutador values (default, 'Andrew',35, 1.65, 80.9, 01,00,02, 01);
insert into juiz values (default, 'Marcos Gonzaga', '51', 02, '0434545bj5kyfc', 02);









select * from lutador;
select * from categoria;
select * from juiz;
select * from apresentador;
select * from nacionalidade;




