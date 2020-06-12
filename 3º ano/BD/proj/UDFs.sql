ALTER function [dbo].[gastoTotal](@condominio decimal) returns int
as begin
	declare @total as int;
	declare @temp as int;
	declare @obra as int;
	
	declare c cursor 
	for select distinct obra_id, orcamento from getObras(@condominio);

	set @total = 0;

	open c;

	fetch from c into @obra, @temp;
	while @@fetch_status = 0
	begin
		set @total += @temp;
		fetch from c into @obra, @temp;
	end

	return @total;
end
go

ALTER function [dbo].[getProprietariosByCond] (@condominio decimal) returns @table table(fname varchar(15),
																	lname varchar(15),
																	telefone decimal,
																	id decimal,
																	morada varchar(70),
																	nif decimal(10,0),
																	data_ini date,
																	data_fim date)
as begin
	insert @table select  pe.fname, pe.lname, pe.telefone, pe.id, casa.morada, pe.nif,tc.data_ini, tc.data_fim
					from proj_condominio as cond join proj_casa as casa on cond.num_fiscal = casa.condominio
							join proj_tem_casa as tc on casa.morada = tc.morada
							join proj_proprietario as prop on tc.nif = prop.nif
							join proj_pessoa as pe on prop.nif = pe.nif
					where cond.num_fiscal = @condominio;

	return;
end
go


ALTER function [dbo].[getPessoasByCond] (@condominio decimal) returns @table table(fname varchar(15),
																	lname varchar(15),
																	telefone decimal,
																	id decimal,
																	morada varchar(70),
																	data_ini date,
																	data_fim date)
as begin
	insert @table select  pe.fname, pe.lname, pe.telefone, pe.id, casa.morada, ve.data_ini, ve.data_fim
					from proj_condominio as cond join proj_casa as casa on cond.num_fiscal = casa.condominio
							join proj_vive_em as ve on casa.morada = ve.morada
							join proj_casa_inquilino as pci on casa.morada = pci.morada
							join proj_tem_casa as ptc on casa.morada = ptc.morada
							join proj_pessoa as pe on ve.nif = pe.nif
					where cond.num_fiscal = @condominio;
	return;
end
go


ALTER function [dbo].[getObras] (@condominio decimal) returns @table table(obra_id int,
																	empresa varchar(30),
																	empresa_nif decimal,
																	data_ini date,
																	data_fim date,
																	orcamento int)
as begin
	insert @table select o.obra_id, e.nome, e.nif, o.data_ini, o.data_fim, o.orcamento  
					from proj_obras as o join proj_faz_obras as fo on o.obra_id = fo.obra_id
					join proj_empresa as e on fo.empresa = e.nif
					where o.condominio = @condominio;

	return;
end
go


ALTER function [dbo].[getInquilinosByCond] (@condominio decimal) returns @table table(fname varchar(15),
																	lname varchar(15),
																	telefone decimal,
																	id decimal,
																	morada varchar(70),
																	nif decimal(10,0),
																	certificado varchar(60),
																	reg_criminal varchar(120))
as begin
	insert @table select  pe.fname, pe.lname, pe.telefone, pe.id, casa.morada, pe.nif,inq.certificado, inq.reg_criminal
					from proj_condominio as cond join proj_casa as casa on cond.num_fiscal = casa.condominio
							join proj_casa_inquilino as cinq on casa.morada = cinq.morada
							join proj_inquilino as inq on cinq.nif = inq.nif
							join proj_pessoa as pe on inq.nif = pe.nif
					where cond.num_fiscal = @condominio;

	return;
end
go



ALTER function [dbo].[gastos_condominio] (@condominio decimal) returns @gastos table(empresa varchar(30), 
																			  orcamento_total int)
as begin 
	declare @empresa as varchar(30);
	declare @orcamentot as int;
	declare @orcamento as int;

	declare c cursor
	for select e.nome, o.orcamento from proj_obras as o join proj_faz_obras as fo on o.obra_id = fo.obra_id
										join proj_empresa as e on fo.empresa = e.nif
									where o.condominio = @condominio;

	set @orcamentot = 0;

	open c;

	fetch from c into @empresa, @orcamento;
	while @@fetch_status = 0
	begin
		select @orcamento=orcamento from proj_obras;
		set @orcamentot += @orcamento;
		insert @gastos(empresa, orcamento_total) values(@empresa, @orcamentot);

		fetch from c into @empresa, @orcamento;
	end

	close c;
	deallocate c;
	
	return
end



