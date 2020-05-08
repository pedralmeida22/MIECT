CREATE TABLE mytemp ( 
	rid BIGINT IDENTITY (1, 1) NOT NULL, 
	at1 INT NULL, 
	at2 INT NULL, 
	at3 INT NULL, 
	lixo varchar(100) NULL
);
DROP TABLE mytemp;
SET IDENTITY_INSERT mytemp ON

-- a
CREATE CLUSTERED INDEX IXrid ON mytemp(rid);
DROP INDEX IXrid ON mytemp;



-- Record the Start Time 
DECLARE @start_time DATETIME, @end_time DATETIME; 
SET @start_time = GETDATE(); 
PRINT @start_time

-- Generate random records 
DECLARE @val as int = 1; 
DECLARE @nelem as int = 5000;

SET nocount ON

WHILE @val <= @nelem 
BEGIN
	DBCC DROPCLEANBUFFERS; -- need to be sysadmin

	INSERT mytemp (rid, at1, at2, at3, lixo) 
	SELECT cast((RAND()*@nelem*40000) as int), cast((RAND()*@nelem) as int), 
			cast((RAND()*@nelem) as int), cast((RAND()*@nelem) as int),
			'lixo...lixo...lixo...lixo...lixo...lixo...lixo...lixo...lixo';
	SET @val = @val + 1; 
END

PRINT 'Inserted ' + str(@nelem) + ' total records'

-- Duration of Insertion Process
SET @end_time = GETDATE(); 
PRINT 'Milliseconds used: ' + CONVERT(VARCHAR(20), DATEDIFF(MILLISECOND, @start_time, @end_time));


--b
-- Tempo de insercao
-- 73847 ms

-- Fragmentacao
SELECT *
FROM sys.dm_db_index_physical_stats( db_id('mytemp'), object_id('Frag'), NULL, NULL, 'DETAILED');


-- d
-- Tempo de insercao
-- 23486 ms

-- e
CREATE INDEX IXat1 ON mytemp(at1);
CREATE INDEX IXat2 ON mytemp(at2);
CREATE INDEX IXat3 ON mytemp(at3);
CREATE INDEX IXlixo ON mytemp(lixo);
-- Tempo de insercao
-- 86413 ms