CREATE TRIGGER trigI_H ON department INSTEAD OF DELETE
AS
	DECLARE @nome as varchar(30);
	DECLARE @num as int;
	DECLARE @m_ssn as int;
	DECLARE @start as Date;

	Select @nome=Dname, @num=DNumber, @m_ssn=Mgr_ssn, @start=Mgr_start_date from deleted

	IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
		WHERE TABLE_NAME = 'department_deleted')) 
		Insert into dbo.department_deleted (DName, DNumber, Mgr_ssn, Mgr_start_date) values(@nome, @num, @m_ssn, @start)
	ELSE
		Create Table dbo.department_deleted(
							DName		varchar(30),
							DNumber		int	,
							Mgr_ssn		int,
							Mgr_start_date	Date);

--NÃO APAGARÁ DA TABELA DEPARTMENT, DAÍ EXIGE MENOS PODER COMPUTACIONAL POIS NÃO EXECUTA TANTAS OPERAÇÕES