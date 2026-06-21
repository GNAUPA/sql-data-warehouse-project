
/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Connect to a default database
\c postgres

-- Drop database if exists
DROP DATABASE IF EXISTS datawarehouse;

-- Create new database
CREATE DATABASE datawarehouse;

-- Connect to the new database
\c datawarehouse

-- Create Schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;


-- Verify schemas were created
SELECT schema_name 
FROM information_schema.schemata 
WHERE schema_name IN ('bronze', 'silver', 'gold');
