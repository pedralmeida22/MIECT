create table casa(
	morada	varchar(50) not null,
	n_quartos int	check(n_quartos > 0) not null,
	cidade varchar(15) not null,
	max_hab int check(max_hab > 0) not null,
	descricao varchar(120),
	primary key(morada)
);

create table pessoa(
	fname	varchar(10) not null,
	lname	varchar(10) not null,
	telefone	int not null check(telefone>0),
	id	int not null	check(id>0),
	nif int not null	check(nif>0),
	morada varchar(50) not null
	primary key (nif)
);

create table condominio(
	num_fiscal int not null check(num_fiscal>0),
	gerente int not null check(gerente>0)
	primary key (num_fiscal),
	foreign key (gerente) references pessoa(nif)
);

create table proprietario(
	nif int not null check(nif>0),
	propriedade varchar(50) not null,
	primary key (nif),
	foreign key (nif) references pessoa(nif)
);

create table inquilino(
	nif int not null check(nif>0),
	garantia varchar(50) not null,
	historico_criminal varchar(50) not null,
	casa varchar(50) not null,
	primary key (nif),
	foreign key (nif) references pessoa(nif),
	foreign key (casa) references casa(morada)
);

create table empresa(
	nome varchar(30) not null,
	nif int not null check(nif>0),
	endereco varchar(50) not null,
	email varchar(20) not null,
	contacto int not null check(contacto > 0),
	primary key (nif)
);


create table contrato(
	codigo varchar(7) not null,
	proprietario int not null check(proprietario>0),
	data_ini date not null,
	data_fim date not null,
	dia_pagamento int not null check(dia_pagamento > 0 and dia_pagamento <= 31),
	primary key (codigo),
	foreign key (proprietario) references proprietario(nif)
);

create table contrato_condominio(
	codigo varchar(7) not null,
	despesa int not null check(despesa>0),
	area_m2 int not null check(area_m2>0),
	seguro varchar(30),
	proprietario int not null check(proprietario>0),
	primary key (codigo),
	foreign key (codigo) references contrato(codigo),
	foreign key (proprietario) references proprietario(nif)
);

create table contrato_renda(
	codigo varchar(7) not null,
	fiador int not null check(fiador>0),
	inquilino int not null check(inquilino>0),
	empresa int not null check(empresa>0),
	renda int not null check(renda>0),
	caucao int not null check(caucao>0),
	n_renda int not null check(n_renda>0),
	taxa int not null check(taxa>0 and taxa<=100),
	primary key (codigo),
	foreign key (codigo) references contrato(codigo),
	foreign key (fiador) references pessoa(nif),
	foreign key (inquilino) references pessoa(nif),
	foreign key (empresa) references empresa(nif),
);

create table obras(
	obra_id int not null check(obra_id>0),
	condominio int not null check(condominio>0),
	primary key (obra_id),
	foreign key (condominio) references condominio(num_fiscal)
);

create table obras_realizadas(
	empresa int not null check(empresa>0),
	obra int not null check(obra>0),
	primary key (empresa, obra),
	foreign key (empresa) references empresa(nif),
	foreign key (obra) references obras(obra_id)
);