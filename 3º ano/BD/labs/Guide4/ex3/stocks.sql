CREATE SCHEMA stocks;
go

CREATE TABLE ENCOMENDA(
		NumeroEnc	int		NOT NULL,
		Data		Date	NOT NULL,
		PRIMARY KEY(NumeroEnc));

CREATE TABLE PRODUTO(
		Codigo		varchar(30)		NOT NULL,
		Nome		char(15)		NOT NULL,
		Preco		int,
		Valor		int,
		NumeroEnc	int				NOT NULL,
		Quantidade	int				NOT NULL,
		PRIMARY KEY(Codigo),
		UNIQUE(Valor),
		FOREIGN KEY(NumeroEnc) REFERENCES ENCOMENDA(NumeroEnc) );

CREATE TABLE IVA(
		Valor	int,
		PRIMARY KEY(Valor),
		FOREIGN KEY(Valor) REFERENCES PRODUTO(Valor) );

CREATE TABLE FORNECEDOR(
		NIF			int			NOT NULL,
		Nome		varchar(50)	NOT NULL,
		Endereco	varchar(50)	NOT NULL,
		NumeroFax	int			NOT NULL,
		NumeroEnc	int			NOT NULL,
		PRIMARY KEY(NIF),
		FOREIGN KEY(NumeroEnc) REFERENCES ENCOMENDA(NumeroEnc) );

CREATE TABLE TIPO_FORNECEDOR(
		Codigo_F	varchar(30)		NOT NULL,
		Descricao	varchar(50)		NOT NULL,
		NIF			int				NOT NULL,
		PRIMARY KEY (Codigo_F),
		UNIQUE(Descricao),
		FOREIGN KEY (NIF) REFERENCES FORNECEDOR(NIF) );

CREATE TABLE CONDICAO_PAGAMENTO(
		Descricao	varchar(50)		NOT NULL,
		NIF			int				NOT NULL,
		PRIMARY KEY(NIF),
		FOREIGN KEY(Descricao)	REFERENCES TIPO_FORNECEDOR(Descricao),
		FOREIGN KEY(NIF)		REFERENCES FORNECEDOR(NIF));