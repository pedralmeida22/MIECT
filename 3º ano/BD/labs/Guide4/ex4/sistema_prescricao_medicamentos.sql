CREATE SCHEMA sistema_prescricao_medicamentos;
GO

CREATE TABLE sistema_prescricao_medicamentos.MEDICO (
	nome			varchar(15),
	especialidade	varchar(10),
	n_sns			int		NOT NULL	CHECK(n_sns > 0),
	PRIMARY KEY (n_sns)
);

CREATE TABLE sistema_prescricao_medicamentos.FARMACIA (
	nome		varchar(15),
	endereco	varchar(25),
	telefone	decimal(9,0),
	nif			int NOT NULL	CHECK(nif > 0),
	PRIMARY KEY (nif)
);

CREATE TABLE sistema_prescricao_medicamentos.PACIENTE (
	nome		varchar(15),
	ddata		date,
	endereco	varchar(25),
	n_utente	int		NOT NULL	CHECK(n_utente > 0),
	PRIMARY KEY (n_utente)
);

CREATE TABLE sistema_prescricao_medicamentos.FARMACEUTICA (
	nome				varchar(15),
	telefone			decimal(9,0),
	endereco			varchar(25),
	n_nacional			int		NOT NULL	CHECK(n_nacional > 0),
	PRIMARY KEY (n_nacional)
);

CREATE TABLE sistema_prescricao_medicamentos.PRESCRICAO (
	n_unico			int		NOT NULL		CHECK(n_unico > 0),
	ddata			date	NOT NULL,
	n_sns			int		NOT NULL		CHECK(n_sns > 0),
	n_utente		int		NOT NULL		CHECK(n_utente > 0),
	nif_farmacia	int		NOT NULL		CHECK(nif_farmacia > 0),
	UNIQUE (n_unico),
	FOREIGN KEY (n_sns) REFERENCES sistema_prescricao_medicamentos.MEDICO(n_sns),
	FOREIGN KEY (n_utente) REFERENCES sistema_prescricao_medicamentos.PACIENTE(n_utente),
	FOREIGN KEY (nif_farmacia) REFERENCES sistema_prescricao_medicamentos.FARMACIA(nif),
	PRIMARY KEY (n_unico, ddata)
);

CREATE TABLE sistema_prescricao_medicamentos.FARMACO (
	formula			varchar(20)		NOT NULL,
	nome			varchar(15)		NOT NULL,
	n_farmaceutica	int				NOT NULL	CHECK(n_farmaceutica > 0),
	UNIQUE (nome),
	PRIMARY KEY (nome, formula),
	FOREIGN KEY (n_farmaceutica) REFERENCES sistema_prescricao_medicamentos.FARMACEUTICA(n_nacional)
);


CREATE TABLE sistema_prescricao_medicamentos.VENDE (
	nome_farmaco		varchar(15)		NOT NULL,
	nif_farmacia		int				NOT NULL,
	FOREIGN KEY (nome_farmaco) REFERENCES sistema_prescricao_medicamentos.FARMACO(nome),
	FOREIGN KEY (nif_farmacia) REFERENCES sistema_prescricao_medicamentos.FARMACIA(nif),
	PRIMARY KEY (nome_farmaco, nif_farmacia)
);


CREATE TABLE sistema_prescricao_medicamentos.ENVOLVE (
	n_unico_prescricao	int				NOT NULL,
	nome_farmaco		varchar(15)		NOT NULL,
	FOREIGN KEY (n_unico_prescricao) REFERENCES sistema_prescricao_medicamentos.PRESCRICAO(n_unico),
	FOREIGN KEY (nome_farmaco) REFERENCES sistema_prescricao_medicamentos.FARMACO(nome),
	PRIMARY KEY (n_unico_prescricao, nome_farmaco)
);
