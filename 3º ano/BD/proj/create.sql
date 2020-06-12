create schema projeto;
go

create table proj_casa(
		morada		varchar(50) not null,
		n_quartos	int			not null,
		cidade		varchar(15) not null,
		max_hab		int			not null,
		descricao	varchar(120)not null,
		primary key(morada));

create table proj_pessoa(
		fname		varchar(10)		not null,
		lname		varchar(10)		not null,
		telefone	int				not null,
		id			int				not null,
		nif			int				not null,
		morada		varchar(50)		not null,
		primary key(nif));

create table proj_vive_em(
		morada		varchar(50)		not null,
		nif			int				not null,
		data_ini	date			not null,
		data_fim	date,
		primary key(morada, nif),
		foreign key(morada) references proj_casa(morada),
		foreign key(nif) references proj_pessoa(nif));

create table proj_proprietario(
		nif			int				not null,
		primary key(nif),
		foreign key(nif) references proj_pessoa(nif));

create table proj_fiador(
		nif			int				not null,
		primary key(nif),
		foreign key(nif) references proj_pessoa(nif));

create table proj_inquilino(
		nif			int				not null,
		certificado varchar(50)		not null,
		reg_criminal varchar(120)	not null,
		primary key(nif),
		foreign key(nif) references proj_pessoa(nif));

create table proj_casa_inquilino(
		nif			int				not null,
		morada		varchar(50)		not null,
		primary key(nif,morada),
		foreign key(nif) references proj_pessoa(nif),
		foreign key(morada) references proj_casa(morada));

create table proj_tem_casa(
		nif			int				not null,
		morada		varchar(50)		not null,
		data_ini	date			not null,
		data_fim	date,
		primary key(nif,morada),
		foreign key(nif) references proj_proprietario(nif),
		foreign key(morada) references proj_casa(morada));

create table proj_condominio(
		num_fiscal			int				not null,
		casa				varchar(50)		not null,
		gerente_nif			int				not null
		primary key(num_fiscal),
		foreign key(gerente_nif) references proj_pessoa(nif),
		foreign key(casa) references proj_casa(morada));

create table proj_obras(
		obra_id				int				not null,
		data_ini			date			not null,
		data_fim			date,
		orcamento			int				not null,
		condominio			int				not null,
		primary key(obra_id),
		foreign key(condominio) references proj_condominio(num_fiscal));

create table proj_contrato(
		codigo				int				not null,
		data_ini			date			not null,
		data_fim			date,
		dia_pagamento		int				not null,
		proprietario		int				not null,
		primary key(codigo),
		foreign key(proprietario) references proj_proprietario(nif));

create table proj_empresa(
		nome				varchar(30)		not null,
		nif					int				not null,
		email				varchar(30)		not null,
		contacto			int				not null,
		primary key(nif));


create table proj_contrato_renda(
		codigo				int				not null,
		renda				int				not null,
		caucao				int				not null,
		taxa				int				not null,
		n_renda				int				not null,
		fiador				int				not null,
		inquilino			int				not null,
		empresa				int				not null,
		primary key(codigo),
		foreign key(codigo) references proj_contrato(codigo),
		foreign key(fiador) references proj_fiador(nif),
		foreign key(inquilino) references proj_inquilino(nif),
		foreign key(empresa) references proj_empresa(nif));


create table proj_contrato_condominio(
		codigo				int				not null,
		despesas			int				not null,
		seguro				varchar(120)	not null,
		area				int				not null,
		condominio			int				not null,
		primary key(codigo),
		foreign key(codigo) references proj_contrato(codigo),
		foreign key(condominio) references proj_condominio(num_fiscal));

create table proj_faz_obras(
		obra_id				int				not null,
		empresa				int				not null,
		primary key(obra_id, empresa),
		foreign key(obra_id) references proj_obras(obra_id),
		foreign key(empresa) references proj_empresa(nif));