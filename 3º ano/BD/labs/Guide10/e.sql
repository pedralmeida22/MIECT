CREATE FUNCTION	e (@Ssn int) RETURNS Table
AS
	RETURN( Select PName, PLocation from ((employee join works_on on employee.Ssn=works_on.Essn) join project on Pno=project.PNumber) where Ssn=@Ssn)
