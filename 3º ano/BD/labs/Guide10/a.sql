-- dario
CREATE PROC a (@numero int) AS 
Delete from dependent where Essn=@numero;
Delete from works_on where Essn=@numero;
Delete from employee where Ssn=@numero;

-- pedro
/*
create procedure remove_employee
@ssn int 
as

delete from dbo.dependent
where Essn = @ssn

delete from dbo.works_on
where Essn = @ssn

delete from dbo.employee
where Ssn = @ssn

go
*/

