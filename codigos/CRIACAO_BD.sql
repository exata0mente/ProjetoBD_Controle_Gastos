create database dbOrcamento;

use dbOrcamento;

create table Usuario (
	codUsuario integer not null,
	nome varchar(40) not null,
	primary key (codUsuario)
);

create table Cliente (
	codCliente integer not null,
	nome varchar(40) not null,
	tipo char(2) default 'PF', -- PF ou PJ
	primary key (codCliente)
);

create table MeioPagamento(
	codMeioPagamento integer not null,
	sigla char(2) not null unique,
	descricao varchar(40) not null,
	sinal char(2) not null default '+', -- + para Entrada / - para Saída
	primary key (codMeioPagamento)
);

create table Categoria(
	codCategoria integer not null,
	sigla char(1) not null unique,
	descricao varchar(40) not null,
	primary key (codCategoria)
);

create table SubCategoria(
	codSubCategoria integer not null,
	sigla char(2) not null unique,
	descricao varchar(40) not null,
	codCategoria integer not null,
	primary key (codSubCategoria),
	foreign key(codCategoria) references Categoria(codCategoria)
	on delete cascade
	on update cascade
);

create table Movimento(
	descricao varchar(40) not null,
	data_mov date not null default '01-01-2011',
	valor numeric(7,2) not null,
	codUsuario integer not null,
	codCliente integer not null,
	codMeioPagamento integer not null,
	codSubCategoria integer not null,
	foreign key (codUsuario) references Usuario (codUsuario)
	on delete cascade
	on update cascade,
	foreign key (codCliente) references Cliente (codCliente)
	on delete cascade
	on update cascade,
	foreign key (codMeioPagamento) references MeioPagamento (codMeioPagamento)
	on delete cascade
	on update cascade,
	foreign key (codSubCategoria) references SubCategoria (codSubCategoria)
	on delete cascade
	on update cascade,
); 
