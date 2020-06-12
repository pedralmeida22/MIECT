alter trigger check_dates on proj_contrato
after insert 
as
begin
	declare @data_ini as date;
	declare @data_fim as date;

	select @data_ini=data_ini, @data_fim=data_fim from inserted;

	if @data_fim < @data_ini
	begin
		raiserror ('Invalid dates!', 16, 1);
		rollback tran;
	end
end
go

alter trigger check_datesObras on proj_obras
after insert 
as
begin
	declare @data_ini as date;
	declare @data_fim as date;

	select @data_ini=data_ini, @data_fim=data_fim from inserted;

	if @data_fim < @data_ini
	begin
		raiserror ('Invalid dates!', 16, 1);
		rollback tran;
	end
end
go

alter trigger validInsertObra on proj_faz_obras
instead of insert
as
begin
	--print 'trigger'
	declare @obra_id int;
	declare @empresa decimal;

	select @obra_id = obra_id, @empresa=empresa from inserted;

	
	if exists (select * from proj_faz_obras where obra_id = @obra_id and empresa = @empresa) 
	begin
		raiserror ('Already in database!', 16, 1);
		--rollback tran;
	end
	else
		insert proj_faz_obras (obra_id, empresa) values(@obra_id, @empresa);
end