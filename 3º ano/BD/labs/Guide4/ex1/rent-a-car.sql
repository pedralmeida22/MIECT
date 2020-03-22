CREATE SCHEMA rent_A_Car;
go

CREATE TABLE CLIENTE(
			Nome		VARCHAR(50)		NOT NULL,
			Endereco	VARCHAR(50)		NOT NUll,
			Num_Carta	INT				NOT NULL,
			NIF			INT				NOT NULL,
			PRIMARY KEY (NIF) );

CREATE TABLE BALCAO(
			Nome		VARCHAR(50)		NOT NULL,
			Endereco	VARCHAR(50)		NOT NUll,
			Numero		INT,
			PRIMARY KEY (Numero) );


CREATE TABLE TIPO_VEICULO(
			Designacao		char(10)	NOT NULL,
			ArCondicionado	int,
			Codigo			varchar(30) NOT NULL,
			PRIMARY KEY (Codigo) );




CREATE TABLE VEICULO(
			Matricula	char(8)		NOT NULL,
			Marca		char(15)	NOT NULL,
			Ano			int			NOT NULL,
			Codigo		varchar(30)		NOT NUll,
			PRIMARY KEY (Matricula),
			FOREIGN KEY (Codigo) REFERENCES TIPO_VEICULO(Codigo) );
		
		

CREATE TABLE ALUGUER(
			Numero		INT,
			Duracao		int				NOT NUll,
			Data		Timestamp		NOT NULL,
			NIF			INT				NOT NULL,
			B_Numero	int,
			Matricula	char(8)		NOT NULL,
			PRIMARY KEY (Numero),
			FOREIGN KEY	(NIF) REFERENCES CLIENTE(NIF),
			FOREIGN KEY	(B_Numero) REFERENCES BALCAO(Numero),
			FOREIGN KEY (Matricula) REFERENCES VEICULO(Matricula) );


CREATE TABLE LIGEIRO(
			NumLugares		int			NOT NULL,
			Portas			int			NOT NULL,
			Combustivel		char(15)	NOT NULL,
			Codigo			varchar(30)	NOT NULL,
			PRIMARY KEY (Codigo),
			FOREIGN KEY (Codigo) REFERENCES TIPO_VEICULO(Codigo) );

			
CREATE TABLE PESADO(
			Peso			int			NOT NULL,
			Passageiros		int			NOT NULL,
			Codigo			varchar(30)	NOT NULL,
			PRIMARY KEY (Codigo),
			FOREIGN KEY (Codigo) REFERENCES TIPO_VEICULO(Codigo) );

CREATE TABLE SIMILARIDADE(
			Codigo1		varchar(30)	NOT NULL,
			Codigo2		varchar(30)	NOT NULL,
			PRIMARY KEY(Codigo1),
			FOREIGN KEY(Codigo2) REFERENCES TIPO_VEICULO(Codigo) );



