-- d
create trigger check_salario on employee
after insert, update
as
begin
	update employee
	set Salary = func.Salary - 1
	from
		(select i.Ssn, e.Salary
		from inserted as i join employee as e on i.Super_ssn = e.Ssn
		where i.Salary >= e.Salary) as func
	where employee.Ssn = func.Ssn;
end
go