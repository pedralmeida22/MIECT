ALTER PROCEDURE [dbo].[updateObra] (@obra_id int, @data_ini date, @data_fim date, @orcamento int, @condominio decimal, @empresa decimal)
AS
begin transaction
UPDATE proj_obras SET data_ini = @data_ini, data_fim = @data_fim, orcamento = @orcamento, condominio = @condominio WHERE obra_id = @obra_id;
update proj_faz_obras set empresa = @empresa WHERE obra_id = @obra_id;

if @@error = 0
	commit
else
	rollback tran

go


ALTER PROCEDURE [dbo].[updateEmpresa] (@nome varchar(30), @nif decimal, @email varchar(30), @contacto decimal)
AS
UPDATE proj_empresa SET nome = @nome, email = @email, contacto = @contacto WHERE nif = @nif;
go


ALTER procedure [dbo].[updateCond] (@num_fiscal decimal, @gerente_nif decimal, @nome varchar(50))
as
UPDATE proj_condominio SET gerente_nif = @gerente_nif WHERE num_fiscal = @num_fiscal;
go

ALTER PROCEDURE [dbo].[updateCasa] (@morada varchar(70), @n_quartos int, @cidade varchar(15), @max_hab int, @descricao varchar(120), @condominio decimal)
AS
UPDATE proj_casa SET n_quartos = @n_quartos, cidade = @cidade, max_hab = @max_hab, descricao = @descricao, condominio = @condominio WHERE morada = @morada;
go


ALTER PROCEDURE [dbo].[insertObra] (@obra_id int, @data_ini date, @data_fim date, @orcamento int, @condominio decimal, @empresa decimal)
AS
begin transaction
declare @count int;
set @count = 0;
select @count = obra_id from proj_obras where obra_id = @obra_id;
--print @count;

if @count = 0
begin
	INSERT proj_obras (obra_id, data_ini, data_fim, orcamento, condominio) Values(@obra_id, @data_ini, @data_fim, @orcamento, @condominio);
	insert proj_faz_obras (obra_id, empresa) values(@obra_id, @empresa);
end
else
	insert proj_faz_obras (obra_id, empresa) values(@obra_id, @empresa);

if @@error = 0
	commit tran
else
begin
	raiserror ('Não foi possivel adicionar obra! Verifique os campos inseridos!', 16, 1);
	rollback tran
end
go



ALTER PROCEDURE [dbo].[insertEmpresa] (@nome varchar(30), @nif decimal, @email varchar(30), @contacto decimal)
AS
INSERT proj_empresa (nome, nif, email, contacto) Values(@nome, @nif, @email, @contacto);
go



ALTER procedure [dbo].[insertCond] (@num_fiscal decimal, @gerente_nif decimal, @nome varchar(50))
as
INSERT proj_condominio (num_fiscal, gerente_nif, nome) Values(@num_fiscal, @gerente_nif, @nome);
go



ALTER proc [dbo].[inserirProp] (@fname varchar(15), @lname varchar(15), @telefone decimal, @id decimal, @nif decimal, @morada varchar(120), @data_ini date, @data_fim date) AS

--INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
--INSERT proj_proprietario (nif) values(@nif);
--insert proj_tem_casa (nif, morada, data_ini, data_fim) values( @nif, @morada, @data_ini, @data_fim);

begin transaction

declare @count decimal;
set @count = 0;
select @count = nif from proj_pessoa where nif = @nif;

declare @count2 decimal;
set @count2 = 0;
select @count2 = nif from proj_proprietario where nif = @nif;

if @count = 0	-- nao ha pessoa (logo nao ha prop)
begin
	INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
	INSERT proj_proprietario (nif) values(@nif);
	insert proj_tem_casa (nif, morada, data_ini, data_fim) values( @nif, @morada, @data_ini, @data_fim);
end

else if @count <> 0 and @count2 = 0	-- ha pessoa mas nao ha prop
begin
	INSERT proj_proprietario (nif) values(@nif);
	insert proj_tem_casa (nif, morada, data_ini, data_fim) values( @nif, @morada, @data_ini, @data_fim);
end

else	-- ha pessoa e prop (adiciona nova casa do prop)
	insert proj_tem_casa (nif, morada, data_ini, data_fim) values( @nif, @morada, @data_ini, @data_fim);

if @@error = 0
	commit tran
else
begin
	raiserror ('Não foi possivel inserir novo registo!', 16, 1);
	rollback tran
end
go




ALTER proc [dbo].[inserirInq] (@fname varchar(15), @lname varchar(15), @telefone decimal, @id decimal, @nif decimal, @certificado varchar(60), @reg_criminal varchar(120), @morada varchar(120)) AS

--INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
--INSERT proj_inquilino(nif, certificado, reg_criminal) values(@nif, @certificado, @reg_criminal);
--INSERT proj_casa_inquilino(nif, morada) values(@nif, @morada);

begin transaction

declare @count decimal;
set @count = 0;
select @count = nif from proj_pessoa where nif = @nif;

declare @count2 decimal;
set @count2 = 0;
select @count2 = nif from proj_inquilino where nif = @nif;

if @count = 0	-- nao ha pessoa (logo nao ha inq)
begin
	INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
	INSERT proj_inquilino(nif, certificado, reg_criminal) values(@nif, @certificado, @reg_criminal);
	INSERT proj_casa_inquilino(nif, morada) values(@nif, @morada);
end

else if @count <> 0 and @count2 = 0	-- ha pessoa mas nao ha inq
begin
	INSERT proj_inquilino(nif, certificado, reg_criminal) values(@nif, @certificado, @reg_criminal);
	INSERT proj_casa_inquilino(nif, morada) values(@nif, @morada);
end

else	-- ha pessoa e inq (associa nova casa do inq)
	INSERT proj_casa_inquilino(nif, morada) values(@nif, @morada);

if @@error = 0
	commit tran
else
begin
	raiserror ('Não foi possivel inserir novo registo!', 16, 1);
	rollback tran
end
go




ALTER proc [dbo].[inserirFiador] (@fname varchar(15), @lname varchar(15), @telefone decimal, @id decimal, @nif decimal) AS

--INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
--INSERT proj_fiador(nif) values(@nif);

begin transaction

declare @count int;
set @count = 0;
if exists (select * from proj_pessoa where nif = @nif)
	set @count = 1;

declare @count2 int;
set @count2 = 0;
if exists (select * from proj_fiador where nif = @nif)
	set @count = 1;

if @count = 0	-- cria pessoa e dps fiador)
begin
	INSERT proj_pessoa (fname, lname, telefone, id, nif) values(@fname, @lname, @telefone, @id, @nif);
	INSERT proj_fiador(nif) values(@nif);
end

else -- cria so fiador (ja ha pessoa)
	INSERT proj_fiador(nif) values(@nif);


if @@error = 0
	commit tran
else
begin
	raiserror ('Não foi possivel inserir novo registo!', 16, 1);
	rollback tran
end
go



ALTER proc [dbo].[inserirContratoRenda] (@cod decimal, @data1 DateTime, @data2 DateTime, @dia int, @prop decimal, @renda int, @caucao int,
	@taxa int, @fiador decimal,@inquilino decimal,@empresa decimal) AS

--INSERT proj_contrato (codigo, data_ini, data_fim, dia_pagamento, proprietario) values(@cod, @data1, @data2, @dia, @prop);
--INSERT proj_contrato_renda (codigo, renda, caucao, taxa, fiador, inquilino, empresa) values(@cod, @renda, @caucao, @taxa, @fiador, @inquilino, @empresa);

BEGIN TRANSACTION
	INSERT proj_contrato (codigo, data_ini, data_fim, dia_pagamento, proprietario) values(@cod, @data1, @data2, @dia, @prop);
	INSERT proj_contrato_renda (codigo, renda, caucao, taxa, fiador, inquilino, empresa) values(@cod, @renda, @caucao, @taxa, @fiador, @inquilino, @empresa);

	if @@error = 0
	commit tran
	else
	begin
		raiserror ('Não foi possivel adicionar contrato! Verifique os campos inseridos!', 16, 1);
		rollback tran
	end
go



ALTER proc [dbo].[inserirContratoCond] (@cod decimal, @data1 DateTime, @data2 DateTime, @dia int, @prop decimal, @despesa int, @seguro varchar(100),	
	@area int, @condo decimal) AS

--INSERT proj_contrato (codigo, data_ini, data_fim, dia_pagamento, proprietario) values(@cod, @data1, @data2, @dia, @prop);	
--INSERT proj_contrato_condominio (codigo, despesas, seguro, area, condominio) values(@cod, @despesa, @seguro, @area, @condo);

BEGIN TRANSACTION
	INSERT proj_contrato (codigo, data_ini, data_fim, dia_pagamento, proprietario) values(@cod, @data1, @data2, @dia, @prop);	
	INSERT proj_contrato_condominio (codigo, despesas, seguro, area, condominio) values(@cod, @despesa, @seguro, @area, @condo);

	if @@error = 0
	commit tran
	else
	begin
		raiserror ('Não foi possivel adicionar contrato! Verifique os campos inseridos!', 16, 1);
		rollback tran
	end
go


ALTER PROCEDURE [dbo].[inserirCasa] (@morada varchar(70), @n_quartos int, @cidade varchar(15), @max_hab int, @descricao varchar(120), @condominio decimal)
AS
INSERT proj_casa (morada, n_quartos, cidade, max_hab, descricao, condominio) Values(@morada, @n_quartos, @cidade, @max_hab, @descricao, @condominio);
go


ALTER proc [dbo].[deleteCasa] @morada varchar(120) AS
	--Declare @i int =0
	--Declare @nif decimal
	--Declare @count int
	--Select  @count = COUNT(nif) from proj_casa_inquilino where morada=@morada;

	--while @i<@count
	--BEGIN
	--	SELECT @nif= ( TOP 1 nif ) from proj_casa_inquilino where morada=@morada;
	--	Delete from proj_inquilino where nif=@nif

	--	SET @i=@i+1

	Delete from proj_vive_em where morada=@morada;
	Delete from proj_tem_casa where morada=@morada;
	Delete from proj_casa_inquilino where morada=@morada;
	Delete from proj_casa where morada=@morada;
go


ALTER proc [dbo].[deletePerson] @nif decimal(10,0) AS

Declare @countInq int;

Update proj_contrato_renda set inquilino=null where inquilino=@nif;

select @countInq= COUNT(nif) from proj_proprietario where nif=@nif;

Update proj_contrato set proprietario=null where proprietario=@nif;

Delete from proj_casa_inquilino where nif=@nif
Delete from proj_tem_casa where nif=@nif
Delete from proj_vive_em where nif=@nif
Delete from proj_inquilino where nif=@nif
Delete from proj_proprietario where nif=@nif

Delete from proj_pessoa where nif=@nif
go



ALTER PROCEDURE [dbo].[getCasaByMorada] (@morada varchar(70))
AS
SELECT * FROM proj_casa WHERE morada = @morada;
go



ALTER PROCEDURE [dbo].[getCasaByMorada2] (@morada varchar(70))
AS
SELECT n_quartos, cidade, max_hab, descricao, condominio FROM proj_casa WHERE morada = @morada;
go



ALTER PROCEDURE [dbo].[getCasasByCondominio] (@condominio decimal)
AS
SELECT * FROM proj_casa WHERE condominio = @condominio;
go



ALTER procedure [dbo].[getCondominio] (@num_fiscal decimal)
as
SELECT * FROM proj_condominio where num_fiscal = @num_fiscal;
go



ALTER PROCEDURE [dbo].[getEmpresaByNif] (@nif decimal)
AS
SELECT * FROM proj_empresa WHERE nif = @nif;
go


ALTER proc [dbo].[getFnameLname] (@nif decimal)
as
SELECT fname, lname FROM proj_pessoa where nif = @nif;
go



ALTER PROCEDURE [dbo].[getMoradasCasasByCondominio] (@condominio decimal)
AS
SELECT morada FROM proj_casa WHERE condominio = @condominio;
go


ALTER proc [dbo].[getNifByFnameLname] (@fname varchar(15), @lname varchar(15))
as
SELECT nif FROM proj_pessoa where fname = @fname and lname = @lname;
go



ALTER PROCEDURE [dbo].[getNomeCond] (@num_fiscal decimal)
AS
SELECT nome FROM proj_condominio where num_fiscal = @num_fiscal;
go



ALTER PROCEDURE [dbo].[getNomeEmpresaByNif] (@nif decimal)
AS
SELECT nome FROM proj_empresa WHERE nif = @nif;
go



ALTER PROCEDURE [dbo].[getNumFiscalCond] (@nome varchar(50))
AS
SELECT num_fiscal FROM proj_condominio where nome = @nome;
go



ALTER procedure [dbo].[getObrasById] (@obra_id int)
as
select * from proj_obras where obra_id = @obra_id;
go


ALTER proc [dbo].[getPessoasByCasa] (@morada varchar(70))
as
SELECT * FROM proj_pessoa join proj_casa_inquilino on proj_pessoa.nif=proj_casa_inquilino.nif where morada = @morada;
go


ALTER proc [dbo].[getPropsByCasa] (@morada varchar(70))
as
SELECT * FROM (proj_pessoa join proj_tem_casa on proj_tem_casa.nif=proj_pessoa.nif) where morada= @morada;
go