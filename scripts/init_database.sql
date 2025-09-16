USE master;
GO

--This script checks if the "DataWarehouse" database exists, sets it to single-user mode to terminate all active connections,
--and then drops the database if it exists.

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO
-- Creating the "DataWarehouse" database
USE DataWarehouse;
GO
  
-- Creating the Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
