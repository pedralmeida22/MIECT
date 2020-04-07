create schema g6prescrition;
go

create table g6prescrition.medico(
	numSNS int not null check(numSNS>0),
	nome varchar(30) not null,
	especialidade varchar(25),
	primary key (numSNS)
);

create table g6prescrition.paciente(
	numUtente int not null check(numUtente>0),
	nome varchar(35) not null,
	dataNasc date not null,
	endereco varchar(50) not null,
	primary key (numUtente)
);

create table g6prescrition.farmacia(
	nome varchar(40) not null,
	telefone int not null check(telefone>0),
	endereco varchar(50) not null,
	unique (nome),
	primary key (telefone)
);

create table g6prescrition.farmaceutica(
	numReg int not null check(numReg>0),
	nome varchar(40) not null,
	endereco varchar(50) not null,
	primary key (numReg)
);

create table g6prescrition.farmaco(
	numRegFarm int not null check(numRegFarm>0),
	nome varchar(30) not null,
	formula varchar(25) not null,
	primary key (nome, numRegFarm),
	foreign key (numRegFarm) references g6prescrition.farmaceutica(numReg)
);

create table g6prescrition.prescricao(
	numPresc int not null check(numPresc>0),
	numUtente int not null check(numUtente>0),
	numMedico int not null check(numMedico>0),
	farmacia varchar(40),--
	dataProc date,--
	primary key (numPresc),
	foreign key (numUtente) references g6prescrition.paciente(numUtente),
	foreign key (numMedico) references g6prescrition.medico(numSNS),
	foreign key (farmacia) references g6prescrition.farmacia(nome)
);

create table g6prescrition.presc_farmaco(
	numPresc int not null check(numPresc>0),
	numRegFarm int not null check(numRegFarm>0),
	nomeFarmaco varchar(30) not null
	primary key (numPresc,numRegFarm, nomeFarmaco),
	foreign key (numPresc) references g6prescrition.prescricao(numPresc),
	foreign key (nomeFarmaco, numRegFarm) references g6prescrition.farmaco(nome, numRegFarm)
);