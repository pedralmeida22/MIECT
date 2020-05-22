CREATE FUNCTION	f (@dno int) RETURNS Table
AS
	RETURN( Select fname, Minit, Lname, Ssn from employee where Dno=@dno and Salary>(
				Select AVG(employee.Salary) from (employee join department on employee.Dno=department.DNumber) where Dno=@dno))