# TRY...CATCH

Syntax:
```SQL
BEGIN TRY  
     { sql_statement | statement_block }  
END TRY  
BEGIN CATCH  
     [ { sql_statement | statement_block } ]  
END CATCH  
[ ; ]
```

Simple usage:
The below is the use case where we try to divide a number by zero.

```SQL
-- Basic example of TRY...CATCH
BEGIN TRY
-- Generate a divide-by-zero error  
  SELECT
    1 / 0 AS Error;
END TRY
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_SEVERITY() AS ErrorSeverity,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH;
GO
```

A simple way to track the errors in SQL server is create a table for storing the errors. Then place an insert statement of code inside the `CATCH` block. Then the error message and the details will be logged in to the ERRORS table.

Example:
DDL to create the error logging table.
```SQL
CREATE TABLE DB_Errors
         (ErrorID        INT IDENTITY(1, 1),
          UserName       VARCHAR(100),
          ErrorNumber    INT,
          ErrorState     INT,
          ErrorSeverity  INT,
          ErrorLine      INT,
          ErrorProcedure VARCHAR(MAX),
          ErrorMessage   VARCHAR(MAX),
          ErrorDateTime  DATETIME)
GO
```

Using TRY...CATCH block to insert into the error logging table.

```SQL
BEGIN TRY
  SELECT 1 / 0;
END TRY

BEGIN CATCH
  INSERT INTO dbo.DB_Errors
  VALUES
  (
    SUSER_SNAME(),
    ERROR_NUMBER(),
    ERROR_STATE(),
    ERROR_SEVERITY(),
    ERROR_LINE(),
    ERROR_PROCEDURE(),
    ERROR_MESSAGE(),
    GETDATE()
  );
END CATCH;
```
