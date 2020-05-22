-- dario

CREATE PROC b AS
SELECT fname, Minit, Lname, Ssn from (department join employee on department.Mgr_ssn=employee.Ssn);

Select Mgr_ssn as Gerente, DATEDIFF(year, Mgr_start_date, GETDATE()) as Anos from department where Mgr_start_date=(
		Select Min(Mgr_start_date) as data_velho from department );



-- pedro
/*
create procedure gestores
@gestor_antigo int output
as

begin
	select *
	from employee as e join department as dep on e.Ssn = dep.Mgr_ssn

	select top 1 @gestor_antigo = Mgr_ssn
	from department
	where Mgr_ssn is not null
	group by Mgr_ssn
end
go
*/

