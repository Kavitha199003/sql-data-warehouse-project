Use Master;
go

--Drop and recreate the datawarehouse database

If EXISTS (select 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END
GO

---Create Database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

---Create Schame
CREATE SCHEMA bronze
GO

CREATE SCHEMA silver
GO

CREATE SCHEMA gold
GO
