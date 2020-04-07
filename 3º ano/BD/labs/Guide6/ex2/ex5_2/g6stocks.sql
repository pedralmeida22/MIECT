create schema g6stocks;
go

create table g6stocks.tipo_fornecedor(
	codigo int not null check(codigo>0),
	designacao varchar(25),
	primary key (codigo)
);

create table g6stocks.fornecedor(
	nif int not null check(nif>0),
	nome varchar(30),
	fax int not null check(fax>0),
	endereco varchar(50),
	condpag int check(condpag>0),
	tipo int not null check(tipo>0),
	primary key (nif),
	foreign key (tipo) references g6stocks.tipo_fornecedor(codigo)
);

create table g6stocks.produto(
	codigo int not null check(codigo>0),
	nome varchar(50) not null,
	preco int not null check(preco>=0),
	iva int not null check(iva>=0 and iva<=100),
	unidades int not null check(unidades>0),
	primary key (codigo)
);

create table g6stocks.encomenda(
	numero int not null check(numero>0),
	data date,
	fornecedor int not null check(fornecedor>0),
	primary key (numero),
	foreign key (fornecedor) references g6stocks.fornecedor(nif)
);

create table g6stocks.item(
	numEnc int not null check(numEnc>0),
	codProd int not null check(codProd>0),
	unidades int not null check(unidades>0),
	primary key (numEnc,codProd),
	foreign key (numEnc) references g6stocks.encomenda(numero),
	foreign key (codProd) references g6stocks.produto(codigo)
);