-- c

create trigger check_gestores on department
after insert
as 
begin 
	declare @ssn as int;

	select @ssn=Mgr_ssn from inserted;

	if exists(select Mgr_ssn from deparment where Mgr_ssn=@ssn)
	begin
		raiserror ('O funcionario já é gestor de um departamento', 16, 1);
		rollback tran;
	end
end
go
