CREATE SCHEMA conferencias;
go

CREATE TABLE INSTITUICAO(
		Nome		varchar(30)		NOT NULL,
		Endereco	varchar(50)		NOT NULL,
		PRIMARY KEY(Nome));


CREATE TABLE PESSOA(
		Email		varchar(30)		NOT NULL,
		Nome		varchar(30)		NOT NULL,
		NomeInst	varchar(30)		NOT NULL,
		PRIMARY KEY(Email),
		FOREIGN KEY(NomeInst) REFERENCES INSTITUICAO(Nome) );

CREATE TABLE ARTIGO(
		NumeroReg	int			NOT NULL,
		Titulo		varchar(30)	NOT NULL,
		PRIMARY KEY(NumeroReg));

CREATE TABLE AUTOR(
		Email	varchar(30)		NOT NULL,
		PRIMARY KEY(Email),
		FOREIGN KEY(Email) REFERENCES PESSOA(Email));

CREATE TABLE POSSUI(
		Email		varchar(30)		NOT NULL,
		NumeroReg	int		NOT NULL,
		PRIMARY KEY(Email, NumeroReg),
		FOREIGN KEY(Email) REFERENCES AUTOR(Email),
		FOREIGN KEY(NumeroReg) REFERENCES ARTIGO(NumeroReg));

CREATE TABLE PARTICIPANTE(
		Email		varchar(30)		NOT NULL,
		Morada		varchar(50)		NOT NULL,
		Data_Ins	Date			NOT NULL,
		PRIMARY KEY(Email),
		FOREIGN KEY(Email) REFERENCES PESSOA(Email));

CREATE TABLE ESTUDANTE(
		Email				varchar(30)		NOT NULL,
		Localizacao_Comp	varchar(50)		NOT NULL,
		PRIMARY KEY(Email),
		FOREIGN KEY(Email) REFERENCES PARTICIPANTE(Email));

CREATE TABLE COMPROVATIVO(
		Email		varchar(30)		NOT NULL,
		NomeInst		varchar(30)		NOT NULL,
		PRIMARY KEY(Email),
		FOREIGN KEY(Email)	REFERENCES ESTUDANTE(Email),
		FOREIGN KEY(NomeInst) REFERENCES INSTITUICAO(Nome));

CREATE TABLE NAO_ESTUDANTE(
		Email		varchar(30)		NOT NULL,
		Referencia	varchar(50)	NOT NULL,
	   	PRIMARY KEY(Email),
		FOREIGN KEY(Email) REFERENCES PARTICIPANTE(Email) );
