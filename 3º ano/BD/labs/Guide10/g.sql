CREATE FUNCTION	g (@dno int) returns @RetTable Table(pname		varchar(30),
													 pnumber	int,
													 plocation  varchar(30),
													 dnum		int,
													 budget_mes decimal(8,2),
													 budgetT	decimal(8,2))
AS BEGIN

	Declare @name as varchar(30);
	Declare @number as int;
	Declare @location as varchar(30);
	Declare @Dnum as int;
	Declare @custoMes as decimal(8,2);
	Declare @custoT as decimal(8,2);



	DECLARE C CURSOR 
	FOR SELECT Pname, PNumber, PLocation FROM dbo.project where DNum=@dno; 
	SET @custoT=0;

	OPEN C;

	FETCH FROM C INTO @name, @number, @location;
	While @@FETCH_STATUS=0 BEGIN
		Select @custoMes = SUM((dbo.works_on.Hours/40)*dbo.employee.Salary) from (dbo.works_on join dbo.employee on dbo.works_on.Essn=dbo.employee.Ssn) where dbo.works_on.Pno=@number;

		SET @custoT+=@custoMes
		Insert @RetTable(pname, pnumber, plocation, dnum, budget_mes, budgetT) values(@name, @number,@location, @dno, @custoMes, @custoT)
	
		FETCH FROM C INTO @name, @number, @location;
	END

	CLOSE C;
	DEALLOCATE C;

	RETURN 
END