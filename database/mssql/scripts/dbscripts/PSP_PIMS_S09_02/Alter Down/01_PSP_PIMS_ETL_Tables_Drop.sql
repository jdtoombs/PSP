-- Script generated by Aqua Data Studio Schema Synchronization for MS SQL Server 2016 on Tue Oct 05 16:47:03 PDT 2021
-- Execute this script on:
-- 		PIMS_S09_01/etl - This database/schema will be modified
-- to synchronize it with MS SQL Server 2016:
-- 		PIMS_S09_02/etl

-- We recommend backing up the database prior to executing the script.

SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table etl.ETL_INTEREST_HOLDER_PERSON_ORG_LOG
PRINT N'Drop table etl.ETL_INTEREST_HOLDER_PERSON_ORG_LOG'
GO
DROP TABLE IF EXISTS [etl].[ETL_INTEREST_HOLDER_PERSON_ORG_LOG]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table etl.ETL_CONTACT_METHOD_LOG
PRINT N'Drop table etl.ETL_CONTACT_METHOD_LOG'
GO
DROP TABLE IF EXISTS [etl].[ETL_CONTACT_METHOD_LOG]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Dtop ETL schema
IF EXISTS (SELECT * 
           FROM   sys.schemas 
           WHERE  name = N'etl')
  EXEC('DROP SCHEMA [etl]');
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

COMMIT TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF
IF (@Success = 1) PRINT 'The database update succeeded'
ELSE BEGIN
   IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
   PRINT 'The database update failed'
END
GO
