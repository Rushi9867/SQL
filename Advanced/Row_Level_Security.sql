-- Create supporting objects for this example
CREATE TABLE [Sales] (SalesID INT, 
    ProductID INT, 
    TenantName NVARCHAR(10), 
    OrderQtd INT, 
    UnitPrice MONEY)
GO

INSERT INTO [Sales]  VALUES (1, 3, 'Tenant1', 5, 10.00);
INSERT INTO [Sales]  VALUES (2, 4, 'Tenant1', 2, 57.00);
INSERT INTO [Sales]  VALUES (3, 7, 'Tenant1', 4, 23.00);
INSERT INTO [Sales]  VALUES (4, 2, 'Tenant2', 2, 91.00);
INSERT INTO [Sales]  VALUES (5, 9, 'Tenant3', 5, 80.00);
INSERT INTO [Sales]  VALUES (6, 1, 'Tenant3', 5, 35.00);
INSERT INTO [Sales]  VALUES (7, 3, 'Tenant4', 8, 11.00);

-- View all the rows in the table  
SELECT * FROM Sales;

CREATE USER [TenantAdmin] WITH PASSWORD = '<strong password>'
GO
CREATE USER [Tenant1] WITH PASSWORD = '<strong password>'
GO
CREATE USER [Tenant2] WITH PASSWORD = '<strong password>'
GO
CREATE USER [Tenant3] WITH PASSWORD = '<strong password>'
GO
CREATE USER [Tenant4] WITH PASSWORD = '<strong password>'
GO

GRANT SELECT ON [Sales] TO [TenantAdmin]
GO
GRANT SELECT ON [Sales] TO [Tenant1]
GO
GRANT SELECT ON [Sales] TO [Tenant2]
GO
GRANT SELECT ON [Sales] TO [Tenant3]
GO
GRANT SELECT ON [Sales] TO [Tenant4]
GO

CREATE SCHEMA sec;  
GO  

--Create the filter predicate

CREATE FUNCTION sec.tvf_SecurityPredicatebyTenant(@TenantName AS NVARCHAR(10))  
    RETURNS TABLE  
WITH SCHEMABINDING  
AS  
    RETURN	SELECT 1 AS result
			WHERE @TenantName = USER_NAME() OR USER_NAME() = 'TenantAdmin';  
GO

--Grant users access to inline table-valued function

GRANT SELECT ON sec.tvf_SecurityPredicatebyTenant TO [TenantAdmin]
GO
GRANT SELECT ON sec.tvf_SecurityPredicatebyTenant TO [Tenant1]
GO
GRANT SELECT ON sec.tvf_SecurityPredicatebyTenant TO [Tenant2]
GO
GRANT SELECT ON sec.tvf_SecurityPredicatebyTenant TO [Tenant3]
GO
GRANT SELECT ON sec.tvf_SecurityPredicatebyTenant TO [Tenant4]
GO

--Create security policy and add the filter predicate
CREATE SECURITY POLICY sec.SalesPolicy  
ADD FILTER PREDICATE sec.tvf_SecurityPredicatebyTenant(TenantName) ON [dbo].[Sales]
WITH (STATE = ON);  
GO

EXECUTE AS USER = 'TenantAdmin';  
SELECT * FROM dbo.Sales;
REVERT;  
  
EXECUTE AS USER = 'Tenant1';  
SELECT * FROM dbo.Sales;
REVERT;  
  
EXECUTE AS USER = 'Tenant2';  
SELECT * FROM dbo.Sales;
REVERT;

EXECUTE AS USER = 'Tenant3';  
SELECT * FROM dbo.Sales;
REVERT;

EXECUTE AS USER = 'Tenant4';  
SELECT * FROM dbo.Sales;
REVERT;

ALTER SECURITY POLICY sec.SalesPolicy WITH(STATE = OFF);
GO  
  
EXECUTE AS USER = 'Tenant1';  
SELECT * FROM dbo.Sales;
REVERT;  
  
EXECUTE AS USER = 'Tenant2';  
SELECT * FROM dbo.Sales;
REVERT;

EXECUTE AS USER = 'Tenant3';  
SELECT * FROM dbo.Sales;
REVERT;

EXECUTE AS USER = 'Tenant4';  
SELECT * FROM dbo.Sales;
REVERT;

