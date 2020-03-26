CREATE SCHEMA university;
GO


CREATE TABLE university.DEPARTAMENTO(
	nome		varchar(15)		NOT NULL,
	localizacao	varchar(20),
	PRIMARY KEY (nome)
);

CREATE TABLE university.PROFESSOR(
	nmec					int		NOT NULL	CHECK(nmec > 0),
	nome					varchar(15),
	data_nasc				date,
	categoria_profissional	varchar(25),
	area_cientifica			varchar(25),
	dedicacao				int		CHECK(dedicacao >= 0 AND dedicacao <= 100),
	nome_depart				varchar(15)	REFERENCES university.DEPARTAMENTO(nome),
	PRIMARY KEY (nmec)
);

ALTER TABLE university.DEPARTAMENTO ADD nmec_prof_dirigente int REFERENCES university.PROFESSOR(nmec) NOT NULL;

CREATE TABLE university.PROJETO(
	id						int NOT NULL	CHECK(id > 0),
	nome					varchar(25),
	orcamento				int		CHECK(orcamento > 0),
	entidade_financiadora	varchar(20),
	data_ini				date,
	data_fim				date,
	nmec_prof_gerente		int REFERENCES university.PROFESSOR(nmec) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE university.ESTUDANTE(
	nmec			int NOT NULL	CHECK(nmec > 0),
	nome			varchar(15),
	grau_formacao	varchar(30),
	nmec_advisor	int REFERENCES university.ESTUDANTE(nmec),
	nome_depart		varchar(15)		NOT NULL,
	PRIMARY KEY (nmec),
	FOREIGN KEY (nome_depart) REFERENCES university.DEPARTAMENTO(nome)
);

CREATE TABLE university.PARTICIPA(
	nmec_estudante	int REFERENCES university.ESTUDANTE(nmec) NOT NULL,
	id_projeto	int REFERENCES university.PROJETO(id) NOT NULL,
	PRIMARY KEY (nmec_estudante, id_projeto)
);

CREATE TABLE university.SUPERVISIONA(
	nmec_prof		int REFERENCES university.PROFESSOR(nmec) NOT NULL,
	nmec_estudante	int REFERENCES university.ESTUDANTE(nmec) NOT NULL,
	PRIMARY KEY (nmec_prof, nmec_estudante)
);

CREATE TABLE university.ACOMPANHA(
	nmec_prof	int REFERENCES university.PROFESSOR(nmec) NOT NULL,
	id_projeto	int REFERENCES university.PROJETO(id) NOT NULL,
	PRIMARY KEY (nmec_prof, id_projeto)
);
