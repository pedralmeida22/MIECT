create view [dbo].[Moradas] as Select morada from proj_casa
GO


create view [dbo].[Show_Condominios] as
	select num_fiscal, nome
	from proj_condominio;
GO



create view [dbo].[Show_Empresas] as
	select nif, nome
	from proj_empresa;
GO


CREATE VIEW [dbo].[Show_Gerentes] AS
	SELECT nif, fname + ' ' + lname as name
	FROM proj_pessoa;

GO