-- Script generated by Aqua Data Studio Schema Synchronization for MS SQL Server 2016 on Wed Nov 10 17:23:16 PST 2021
-- Execute this script on:
-- 		PIMS_S15_00/<All Schemas> - This database/schema will be modified
-- to synchronize it with MS SQL Server 2016:
-- 		PIMS_S13_00/<All Schemas>

-- We recommend backing up the database prior to executing the script.

SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERADD_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_PERADD_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERADD_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERADD_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_PERADD_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERADD_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERADD_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_PERADD_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERADD_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_PERSON_PIM_PERADD_FK
PRINT N'Drop foreign key constraint PIM_PERSON_PIM_PERADD_FK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS]
	DROP CONSTRAINT [PIM_PERSON_PIM_PERADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_ADDRSS_PIM_PERADD_FK
PRINT N'Drop foreign key constraint PIM_ADDRSS_PIM_PERADD_FK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS]
	DROP CONSTRAINT [PIM_ADDRSS_PIM_PERADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_ADUSGT_PIM_PERADD_FK
PRINT N'Drop foreign key constraint PIM_ADUSGT_PIM_PERADD_FK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS]
	DROP CONSTRAINT [PIM_ADUSGT_PIM_PERADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_ORG_PIM_ORGADD_FK
PRINT N'Drop foreign key constraint PIM_ORG_PIM_ORGADD_FK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
	DROP CONSTRAINT [PIM_ORG_PIM_ORGADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_ADDRSS_PIM_ORGADD_FK
PRINT N'Drop foreign key constraint PIM_ADDRSS_PIM_ORGADD_FK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
	DROP CONSTRAINT [PIM_ADDRSS_PIM_ORGADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint PIM_ADUSGT_PIM_ORGADD_FK
PRINT N'Drop foreign key constraint PIM_ADUSGT_PIM_ORGADD_FK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
	DROP CONSTRAINT [PIM_ADUSGT_PIM_ORGADD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.PERADD_PERSON_ID_IDX
PRINT N'Drop index dbo.PERADD_PERSON_ID_IDX'
GO
DROP INDEX [dbo].[PIMS_PERSON_ADDRESS].[PERADD_PERSON_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.PERADD_ADDRESS_USAGE_TYPE_CODE_IDX
PRINT N'Drop index dbo.PERADD_ADDRESS_USAGE_TYPE_CODE_IDX'
GO
DROP INDEX [dbo].[PIMS_PERSON_ADDRESS].[PERADD_ADDRESS_USAGE_TYPE_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.PERADD_ADDRESS_ID_IDX
PRINT N'Drop index dbo.PERADD_ADDRESS_ID_IDX'
GO
DROP INDEX [dbo].[PIMS_PERSON_ADDRESS].[PERADD_ADDRESS_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORGADD_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_ORGADD_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORGADD_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORGADD_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_ORGADD_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORGADD_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORGADD_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_ORGADD_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORGADD_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.ORGADD_ORGANIZATION_ID_IDX
PRINT N'Drop index dbo.ORGADD_ORGANIZATION_ID_IDX'
GO
DROP INDEX [dbo].[PIMS_ORGANIZATION_ADDRESS].[ORGADD_ORGANIZATION_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.ORGADD_ADDRESS_USAGE_TYPE_CODE_IDX
PRINT N'Drop index dbo.ORGADD_ADDRESS_USAGE_TYPE_CODE_IDX'
GO
DROP INDEX [dbo].[PIMS_ORGANIZATION_ADDRESS].[ORGADD_ADDRESS_USAGE_TYPE_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.ORGADD_ADDRESS_ID_IDX
PRINT N'Drop index dbo.ORGADD_ADDRESS_ID_IDX'
GO
DROP INDEX [dbo].[PIMS_ORGANIZATION_ADDRESS].[ORGADD_ADDRESS_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORG_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_ORG_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORG_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ADDRSS_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_ADDRSS_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_ADDRSS_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERSON_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_PERSON_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERSON_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORG_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_ORG_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORG_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ORG_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_ORG_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_ORG_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERSON_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_PERSON_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERSON_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PERSON_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_PERSON_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_PERSON_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ADDRSS_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_ADDRSS_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_ADDRSS_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_ADDRSS_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_ADDRSS_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_ADDRSS_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop view dbo.PIMS_PROPERTY_LOCATION_VW
PRINT N'Drop view dbo.PIMS_PROPERTY_LOCATION_VW'
GO
DROP VIEW [dbo].[PIMS_PROPERTY_LOCATION_VW]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop view dbo.PIMS_PROPERTY_BOUNDARY_VW
PRINT N'Drop view dbo.PIMS_PROPERTY_BOUNDARY_VW'
GO
DROP VIEW [dbo].[PIMS_PROPERTY_BOUNDARY_VW]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop unique constraint PIMS_PERADD_H_UK
PRINT N'Drop unique constraint PIMS_PERADD_H_UK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS_HIST]
	DROP CONSTRAINT [PIMS_PERADD_H_UK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint PIMS_PERADD_H_PK
PRINT N'Drop primary key constraint PIMS_PERADD_H_PK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS_HIST]
	DROP CONSTRAINT [PIMS_PERADD_H_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop unique constraint PERADD_UNQ_ADDR_TYPE_TUC
PRINT N'Drop unique constraint PERADD_UNQ_ADDR_TYPE_TUC'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS]
	DROP CONSTRAINT [PERADD_UNQ_ADDR_TYPE_TUC]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint PERADD_PK
PRINT N'Drop primary key constraint PERADD_PK'
GO
ALTER TABLE [dbo].[PIMS_PERSON_ADDRESS]
	DROP CONSTRAINT [PERADD_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_PERSON_ADDRESS
PRINT N'Drop table dbo.PIMS_PERSON_ADDRESS'
GO
DROP TABLE [dbo].[PIMS_PERSON_ADDRESS]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop unique constraint PIMS_ORGADD_H_UK
PRINT N'Drop unique constraint PIMS_ORGADD_H_UK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS_HIST]
	DROP CONSTRAINT [PIMS_ORGADD_H_UK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint PIMS_ORGADD_H_PK
PRINT N'Drop primary key constraint PIMS_ORGADD_H_PK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS_HIST]
	DROP CONSTRAINT [PIMS_ORGADD_H_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop unique constraint ORGADD_UNQ_ADDR_TYPE_TUC
PRINT N'Drop unique constraint ORGADD_UNQ_ADDR_TYPE_TUC'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
	DROP CONSTRAINT [ORGADD_UNQ_ADDR_TYPE_TUC]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint ORGADD_PK
PRINT N'Drop primary key constraint ORGADD_PK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
	DROP CONSTRAINT [ORGADD_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_ORGANIZATION_ADDRESS
PRINT N'Drop table dbo.PIMS_ORGANIZATION_ADDRESS'
GO
DROP TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop procedure dbo.pims_error_handling
PRINT N'Drop procedure dbo.pims_error_handling'
GO
DROP PROCEDURE [dbo].[pims_error_handling]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table etl.ETL_INTEREST_HOLDER_ORG_LOG
PRINT N'Drop table etl.ETL_INTEREST_HOLDER_ORG_LOG'
GO
DROP TABLE [etl].[ETL_INTEREST_HOLDER_ORG_LOG]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table etl.ETL_OPERATIONAL_SS_LOAD
PRINT N'Drop table etl.ETL_OPERATIONAL_SS_LOAD'
GO
DROP TABLE [etl].[ETL_OPERATIONAL_SS_LOAD]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop function dbo.pims_ColumnExists
PRINT N'Drop function dbo.pims_ColumnExists'
GO
DROP FUNCTION [dbo].[pims_ColumnExists]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table etl.ETL_INTEREST_HOLDER_PERSON_LOG
PRINT N'Drop table etl.ETL_INTEREST_HOLDER_PERSON_LOG'
GO
DROP TABLE [etl].[ETL_INTEREST_HOLDER_PERSON_LOG]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create table etl.ETL_INTEREST_HOLDER_PERSON_ORG_LOG
PRINT N'Create table etl.ETL_INTEREST_HOLDER_PERSON_ORG_LOG'
GO
CREATE TABLE [etl].[ETL_INTEREST_HOLDER_PERSON_ORG_LOG]  ( 
	[SURNAME]                          	nvarchar(50) NULL,
	[FIRST_NAME]                       	nvarchar(50) NULL,
	[MIDDLE_NAME]                      	nvarchar(200) NULL,
	[STREET_ADDRESS_1]                 	nvarchar(200) NULL,
	[STREET_ADDRESS_2]                 	nvarchar(200) NULL,
	[STREET_ADDRESS_3]                 	nvarchar(200) NULL,
	[MUNICIPALITY_NAME]                	nvarchar(200) NULL,
	[PROVINCE]                         	nvarchar(2) NULL,
	[COUNTRY]                          	nvarchar(20) NULL,
	[ADDRESS_ID]                       	bigint NULL,
	[PROVINCE_STATE_ID]                	smallint NULL,
	[COUNTRY_ID]                       	smallint NULL,
	[REGION_CODE]                      	smallint NULL,
	[DISTRICT_CODE]                    	smallint NULL,
	[ORGANIZATION_NAME]                	nvarchar(200) NULL,
	[ORGANIZATION_TYPE_CODE]           	nvarchar(20) NULL,
	[ORGANIZATION_IDENTIFIER_TYPE_CODE]	nvarchar(20) NULL,
	[APP_CREATE_USERID]                	nvarchar(30) NULL,
	[APP_CREATE_USER_DIRECTORY]        	nvarchar(30) NULL,
	[APP_LAST_UPDATE_USERID]           	nvarchar(30) NULL,
	[APP_LAST_UPDATE_USER_DIRECTORY]   	nvarchar(30) NULL 
	)
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table etl.ETL_CONTACT_METHOD_LOG
PRINT N'Alter table etl.ETL_CONTACT_METHOD_LOG'
GO
ALTER TABLE [etl].[ETL_CONTACT_METHOD_LOG]
	DROP COLUMN [ErrorCode], [ErrorColumn]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table etl.ETL_ERROR_LOG
PRINT N'Alter table etl.ETL_ERROR_LOG'
GO
ALTER TABLE [etl].[ETL_ERROR_LOG]
	DROP COLUMN [ErrorCode], [ErrorColumn]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_ADDRESS
PRINT N'Alter table dbo.PIMS_ADDRESS'
GO
ALTER TABLE [dbo].[PIMS_ADDRESS]
	ADD [ADDRESS_USAGE_TYPE_CODE] nvarchar(20) NOT NULL DEFAULT 'UNKNOWN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_ORGANIZATION
PRINT N'Alter table dbo.PIMS_ORGANIZATION'
GO
EXEC dbo.sp_rename N'dbo.PIMS_ORGANIZATION.COMMENT' , N'ADDRESS_ID', 'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION] ALTER COLUMN [ADDRESS_ID] bigint NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_PERSON
PRINT N'Alter table dbo.PIMS_PERSON'
GO
EXEC dbo.sp_rename N'dbo.PIMS_PERSON.COMMENT' , N'ADDRESS_ID', 'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[PIMS_PERSON] ALTER COLUMN [ADDRESS_ID] bigint NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create procedure dbo.pims_error_handling
PRINT N'Create procedure dbo.pims_error_handling'
GO
/* ---------------------------------------------------------------------- */
/* Add procedures                                                         */
/* ---------------------------------------------------------------------- */

-- ............................................................................................


-- --------------------------------------------------------------------------------------------
-- Create procedure [dbo].[pims_error_handling]
-- --------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pims_error_handling] AS
  begin
    DECLARE @errmsg   nvarchar(2048),
      @severity tinyint,
      @state    tinyint,
      @errno    int,
      @proc     sysname,
      @lineno   int

    SELECT @errmsg = error_message(), @severity = error_severity(),
      @state  = error_state(), @errno = error_number(),
      @proc   = error_procedure(), @lineno = error_line()

    IF @errmsg NOT LIKE '***%'
      BEGIN
        SELECT @errmsg = '*** ' + coalesce(quotename(@proc), '<dynamic SQL>') +
          ', Line ' + ltrim(str(@lineno)) + '. Errno ' +
          ltrim(str(@errno)) + ': ' + @errmsg
      END

    RAISERROR('%s', @severity, @state, @errmsg)
  end
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_PERSON_HIST
PRINT N'Alter table dbo.PIMS_PERSON_HIST'
GO
EXEC dbo.sp_rename N'dbo.PIMS_PERSON_HIST.COMMENT' , N'ADDRESS_ID', 'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[PIMS_PERSON_HIST] ALTER COLUMN [ADDRESS_ID] bigint NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_ADDRESS_HIST
PRINT N'Alter table dbo.PIMS_ADDRESS_HIST'
GO
ALTER TABLE [dbo].[PIMS_ADDRESS_HIST]
	ADD [ADDRESS_USAGE_TYPE_CODE] nvarchar(20) NOT NULL DEFAULT 'UNKNOWN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_ORGANIZATION_HIST
PRINT N'Alter table dbo.PIMS_ORGANIZATION_HIST'
GO
EXEC dbo.sp_rename N'dbo.PIMS_ORGANIZATION_HIST.COMMENT' , N'ADDRESS_ID', 'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION_HIST] ALTER COLUMN [ADDRESS_ID] bigint NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_LEASE_HIST
PRINT N'Alter table dbo.PIMS_LEASE_HIST'
GO
ALTER TABLE [dbo].[PIMS_LEASE_HIST] ADD DEFAULT ((0)) FOR [RENEWAL_TERM_MONTHS]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description', @value = N'Number of months included in lease renewal' , 
	@level0type = N'Schema', @level0name = N'dbo', 
	@level1type = N'Table', @level1name = N'PIMS_LEASE_HIST', 
	@level2type = N'Column', @level2name = N'RENEWAL_TERM_MONTHS'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create view dbo.PIMS_PROPERTY_BOUNDARY_VW
PRINT N'Create view dbo.PIMS_PROPERTY_BOUNDARY_VW'
GO
/* ---------------------------------------------------------------------- */
/* Add views                                                              */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add views                                                              */
/* ---------------------------------------------------------------------- */

CREATE VIEW [dbo].[PIMS_PROPERTY_BOUNDARY_VW] AS
SELECT PROP.PROPERTY_ID
     , PROP.PID
     , RIGHT('000000000' + CAST(PROP.PID AS VARCHAR(9)), 9) AS PID_PADDED
     , PROP.PIN
     , PROP.PROPERTY_TYPE_CODE
     , PROP.PROPERTY_STATUS_TYPE_CODE
     , PROP.PROPERTY_DATA_SOURCE_TYPE_CODE
     , PROP.PROPERTY_DATA_SOURCE_EFFECTIVE_DATE
     , PROP.PROPERTY_CLASSIFICATION_TYPE_CODE
     , PROP.PROPERTY_TENURE_TYPE_CODE
     , ADDR.STREET_ADDRESS_1
     , ADDR.STREET_ADDRESS_2
     , ADDR.STREET_ADDRESS_3
     , ADDR.MUNICIPALITY_NAME
     , ADDR.POSTAL_CODE
     , PROV.PROVINCE_STATE_CODE
     , PROV.DESCRIPTION AS PROVINCE_NAME
     , CNTY.COUNTRY_CODE
     , CNTY.DESCRIPTION AS COUNTRY_NAME
     , PROP.NAME
     , PROP.DESCRIPTION
     , PROP.ADDRESS_ID
     , PROP.REGION_CODE
     , PROP.DISTRICT_CODE
     , PROP.BOUNDARY AS GEOMETRY
     , PROP.PROPERTY_AREA_UNIT_TYPE_CODE
     , PROP.LAND_AREA
     , PROP.LAND_LEGAL_DESCRIPTION
     , PROP.ENCUMBRANCE_REASON
     , PROP.IS_SENSITIVE
     , PROP.IS_OWNED
     , PROP.IS_PROPERTY_OF_INTEREST
     , PROP.IS_VISIBLE_TO_OTHER_AGENCIES
     , PROP.ZONING,ZONING_POTENTIAL
FROM   PIMS_PROPERTY       PROP                                                    INNER JOIN
       PIMS_ADDRESS        ADDR ON ADDR.ADDRESS_ID        = PROP.ADDRESS_ID        INNER JOIN
       PIMS_PROVINCE_STATE PROV ON PROV.PROVINCE_STATE_ID = ADDR.PROVINCE_STATE_ID INNER JOIN
       PIMS_COUNTRY        CNTY ON CNTY.COUNTRY_ID        = ADDR.COUNTRY_ID
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create view dbo.PIMS_PROPERTY_LOCATION_VW
PRINT N'Create view dbo.PIMS_PROPERTY_LOCATION_VW'
GO
CREATE VIEW [dbo].[PIMS_PROPERTY_LOCATION_VW] AS
SELECT PROP.PROPERTY_ID              
     , PROP.PID
     , RIGHT('000000000' + CAST(PROP.PID AS VARCHAR(9)), 9) AS PID_PADDED
     , PROP.PIN                   
     , PROP.PROPERTY_TYPE_CODE
     , PROP.PROPERTY_STATUS_TYPE_CODE
     , PROP.PROPERTY_DATA_SOURCE_TYPE_CODE
     , PROP.PROPERTY_DATA_SOURCE_EFFECTIVE_DATE
     , PROP.PROPERTY_CLASSIFICATION_TYPE_CODE
     , PROP.PROPERTY_TENURE_TYPE_CODE
     , ADDR.STREET_ADDRESS_1
     , ADDR.STREET_ADDRESS_2
     , ADDR.STREET_ADDRESS_3
     , ADDR.MUNICIPALITY_NAME
     , ADDR.POSTAL_CODE      
     , PROV.PROVINCE_STATE_CODE
     , PROV.DESCRIPTION AS PROVINCE_NAME
     , CNTY.COUNTRY_CODE
     , CNTY.DESCRIPTION AS COUNTRY_NAME
     , PROP.NAME
     , PROP.DESCRIPTION
     , PROP.ADDRESS_ID                 
     , PROP.REGION_CODE
     , PROP.DISTRICT_CODE
     , PROP.LOCATION AS GEOMETRY
     , PROP.PROPERTY_AREA_UNIT_TYPE_CODE
     , PROP.LAND_AREA
     , PROP.LAND_LEGAL_DESCRIPTION
     , PROP.ENCUMBRANCE_REASON                                      
     , PROP.IS_SENSITIVE
     , PROP.IS_OWNED
     , PROP.IS_PROPERTY_OF_INTEREST
     , PROP.IS_VISIBLE_TO_OTHER_AGENCIES
     , PROP.ZONING,ZONING_POTENTIAL
FROM   PIMS_PROPERTY       PROP                                                    INNER JOIN
       PIMS_ADDRESS        ADDR ON ADDR.ADDRESS_ID        = PROP.ADDRESS_ID        INNER JOIN
       PIMS_PROVINCE_STATE PROV ON PROV.PROVINCE_STATE_ID = ADDR.PROVINCE_STATE_ID INNER JOIN
       PIMS_COUNTRY        CNTY ON CNTY.COUNTRY_ID        = ADDR.COUNTRY_ID
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create index dbo.ORG_ADDRESS_ID_IDX
PRINT N'Create index dbo.ORG_ADDRESS_ID_IDX'
GO
CREATE NONCLUSTERED INDEX [ORG_ADDRESS_ID_IDX]
	ON [dbo].[PIMS_ORGANIZATION]([ADDRESS_ID])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create index dbo.PERSON_ADDRESS_ID_IDX
PRINT N'Create index dbo.PERSON_ADDRESS_ID_IDX'
GO
CREATE NONCLUSTERED INDEX [PERSON_ADDRESS_ID_IDX]
	ON [dbo].[PIMS_PERSON]([ADDRESS_ID])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create index dbo.ADDRSS_ADDRESS_USAGE_TYPE_CODE_IDX
PRINT N'Create index dbo.ADDRSS_ADDRESS_USAGE_TYPE_CODE_IDX'
GO
CREATE NONCLUSTERED INDEX [ADDRSS_ADDRESS_USAGE_TYPE_CODE_IDX]
	ON [dbo].[PIMS_ADDRESS]([ADDRESS_USAGE_TYPE_CODE])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ADDRSS_I_S_U_TR
PRINT N'Create trigger dbo.PIMS_ADDRSS_I_S_U_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ADDRSS_I_S_U_TR] ON PIMS_ADDRESS INSTEAD OF UPDATE AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- validate concurrency control
  if exists (select 1 from inserted, deleted where inserted.CONCURRENCY_CONTROL_NUMBER != deleted.CONCURRENCY_CONTROL_NUMBER+1 AND inserted.ADDRESS_ID = deleted.ADDRESS_ID)
    raiserror('CONCURRENCY FAILURE.',16,1)


  -- update statement
  update PIMS_ADDRESS
    set "ADDRESS_ID" = inserted."ADDRESS_ID",
      "ADDRESS_USAGE_TYPE_CODE" = inserted."ADDRESS_USAGE_TYPE_CODE",
      "REGION_CODE" = inserted."REGION_CODE",
      "DISTRICT_CODE" = inserted."DISTRICT_CODE",
      "PROVINCE_STATE_ID" = inserted."PROVINCE_STATE_ID",
      "COUNTRY_ID" = inserted."COUNTRY_ID",
      "STREET_ADDRESS_1" = inserted."STREET_ADDRESS_1",
      "STREET_ADDRESS_2" = inserted."STREET_ADDRESS_2",
      "STREET_ADDRESS_3" = inserted."STREET_ADDRESS_3",
      "MUNICIPALITY_NAME" = inserted."MUNICIPALITY_NAME",
      "POSTAL_CODE" = inserted."POSTAL_CODE",
      "LATITUDE" = inserted."LATITUDE",
      "LONGITUDE" = inserted."LONGITUDE",
      "COMMENT" = inserted."COMMENT",
      "CONCURRENCY_CONTROL_NUMBER" = inserted."CONCURRENCY_CONTROL_NUMBER",
      "APP_LAST_UPDATE_TIMESTAMP" = inserted."APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID" = inserted."APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID" = inserted."APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY" = inserted."APP_LAST_UPDATE_USER_DIRECTORY"
    , DB_LAST_UPDATE_TIMESTAMP = getutcdate()
    , DB_LAST_UPDATE_USERID = user_name()
    from PIMS_ADDRESS
    inner join inserted
    on (PIMS_ADDRESS.ADDRESS_ID = inserted.ADDRESS_ID);

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ADDRSS_I_S_I_TR
PRINT N'Create trigger dbo.PIMS_ADDRSS_I_S_I_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ADDRSS_I_S_I_TR] ON PIMS_ADDRESS INSTEAD OF INSERT AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM inserted)
    RETURN;


  insert into PIMS_ADDRESS ("ADDRESS_ID",
      "ADDRESS_USAGE_TYPE_CODE",
      "REGION_CODE",
      "DISTRICT_CODE",
      "PROVINCE_STATE_ID",
      "COUNTRY_ID",
      "STREET_ADDRESS_1",
      "STREET_ADDRESS_2",
      "STREET_ADDRESS_3",
      "MUNICIPALITY_NAME",
      "POSTAL_CODE",
      "LATITUDE",
      "LONGITUDE",
      "COMMENT",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY")
    select "ADDRESS_ID",
      "ADDRESS_USAGE_TYPE_CODE",
      "REGION_CODE",
      "DISTRICT_CODE",
      "PROVINCE_STATE_ID",
      "COUNTRY_ID",
      "STREET_ADDRESS_1",
      "STREET_ADDRESS_2",
      "STREET_ADDRESS_3",
      "MUNICIPALITY_NAME",
      "POSTAL_CODE",
      "LATITUDE",
      "LONGITUDE",
      "COMMENT",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY"
    from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_PERSON_I_S_I_TR
PRINT N'Create trigger dbo.PIMS_PERSON_I_S_I_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PERSON_I_S_I_TR] ON PIMS_PERSON INSTEAD OF INSERT AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM inserted)
    RETURN;


  insert into PIMS_PERSON ("PERSON_ID",
      "ADDRESS_ID",
      "SURNAME",
      "FIRST_NAME",
      "MIDDLE_NAMES",
      "NAME_SUFFIX",
      "PREFERRED_NAME",
      "BIRTH_DATE",
      "IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY")
    select "PERSON_ID",
      "ADDRESS_ID",
      "SURNAME",
      "FIRST_NAME",
      "MIDDLE_NAMES",
      "NAME_SUFFIX",
      "PREFERRED_NAME",
      "BIRTH_DATE",
      "IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY"
    from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_PERSON_I_S_U_TR
PRINT N'Create trigger dbo.PIMS_PERSON_I_S_U_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PERSON_I_S_U_TR] ON PIMS_PERSON INSTEAD OF UPDATE AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- validate concurrency control
  if exists (select 1 from inserted, deleted where inserted.CONCURRENCY_CONTROL_NUMBER != deleted.CONCURRENCY_CONTROL_NUMBER+1 AND inserted.PERSON_ID = deleted.PERSON_ID)
    raiserror('CONCURRENCY FAILURE.',16,1)


  -- update statement
  update PIMS_PERSON
    set "PERSON_ID" = inserted."PERSON_ID",
      "ADDRESS_ID" = inserted."ADDRESS_ID",
      "SURNAME" = inserted."SURNAME",
      "FIRST_NAME" = inserted."FIRST_NAME",
      "MIDDLE_NAMES" = inserted."MIDDLE_NAMES",
      "NAME_SUFFIX" = inserted."NAME_SUFFIX",
      "PREFERRED_NAME" = inserted."PREFERRED_NAME",
      "BIRTH_DATE" = inserted."BIRTH_DATE",
      "IS_DISABLED" = inserted."IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER" = inserted."CONCURRENCY_CONTROL_NUMBER",
      "APP_LAST_UPDATE_TIMESTAMP" = inserted."APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID" = inserted."APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID" = inserted."APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY" = inserted."APP_LAST_UPDATE_USER_DIRECTORY"
    , DB_LAST_UPDATE_TIMESTAMP = getutcdate()
    , DB_LAST_UPDATE_USERID = user_name()
    from PIMS_PERSON
    inner join inserted
    on (PIMS_PERSON.PERSON_ID = inserted.PERSON_ID);

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ORG_I_S_I_TR
PRINT N'Create trigger dbo.PIMS_ORG_I_S_I_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ORG_I_S_I_TR] ON PIMS_ORGANIZATION INSTEAD OF INSERT AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM inserted)
    RETURN;


  insert into PIMS_ORGANIZATION ("ORGANIZATION_ID",
      "PRNT_ORGANIZATION_ID",
      "ADDRESS_ID",
      "REGION_CODE",
      "DISTRICT_CODE",
      "ORGANIZATION_TYPE_CODE",
      "ORG_IDENTIFIER_TYPE_CODE",
      "ORGANIZATION_IDENTIFIER",
      "ORGANIZATION_NAME",
      "ORGANIZATION_ALIAS",
      "WEBSITE",
      "IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY")
    select "ORGANIZATION_ID",
      "PRNT_ORGANIZATION_ID",
      "ADDRESS_ID",
      "REGION_CODE",
      "DISTRICT_CODE",
      "ORGANIZATION_TYPE_CODE",
      "ORG_IDENTIFIER_TYPE_CODE",
      "ORGANIZATION_IDENTIFIER",
      "ORGANIZATION_NAME",
      "ORGANIZATION_ALIAS",
      "WEBSITE",
      "IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY"
    from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ORG_I_S_U_TR
PRINT N'Create trigger dbo.PIMS_ORG_I_S_U_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ORG_I_S_U_TR] ON PIMS_ORGANIZATION INSTEAD OF UPDATE AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- validate concurrency control
  if exists (select 1 from inserted, deleted where inserted.CONCURRENCY_CONTROL_NUMBER != deleted.CONCURRENCY_CONTROL_NUMBER+1 AND inserted.ORGANIZATION_ID = deleted.ORGANIZATION_ID)
    raiserror('CONCURRENCY FAILURE.',16,1)


  -- update statement
  update PIMS_ORGANIZATION
    set "ORGANIZATION_ID" = inserted."ORGANIZATION_ID",
      "PRNT_ORGANIZATION_ID" = inserted."PRNT_ORGANIZATION_ID",
      "ADDRESS_ID" = inserted."ADDRESS_ID",
      "REGION_CODE" = inserted."REGION_CODE",
      "DISTRICT_CODE" = inserted."DISTRICT_CODE",
      "ORGANIZATION_TYPE_CODE" = inserted."ORGANIZATION_TYPE_CODE",
      "ORG_IDENTIFIER_TYPE_CODE" = inserted."ORG_IDENTIFIER_TYPE_CODE",
      "ORGANIZATION_IDENTIFIER" = inserted."ORGANIZATION_IDENTIFIER",
      "ORGANIZATION_NAME" = inserted."ORGANIZATION_NAME",
      "ORGANIZATION_ALIAS" = inserted."ORGANIZATION_ALIAS",
      "WEBSITE" = inserted."WEBSITE",
      "IS_DISABLED" = inserted."IS_DISABLED",
      "CONCURRENCY_CONTROL_NUMBER" = inserted."CONCURRENCY_CONTROL_NUMBER",
      "APP_LAST_UPDATE_TIMESTAMP" = inserted."APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID" = inserted."APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID" = inserted."APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY" = inserted."APP_LAST_UPDATE_USER_DIRECTORY"
    , DB_LAST_UPDATE_TIMESTAMP = getutcdate()
    , DB_LAST_UPDATE_USERID = user_name()
    from PIMS_ORGANIZATION
    inner join inserted
    on (PIMS_ORGANIZATION.ORGANIZATION_ID = inserted.ORGANIZATION_ID);

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_PERSON_A_S_IUD_TR
PRINT N'Create trigger dbo.PIMS_PERSON_A_S_IUD_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PERSON_A_S_IUD_TR] ON PIMS_PERSON FOR INSERT, UPDATE, DELETE AS
SET NOCOUNT ON
BEGIN TRY
DECLARE @curr_date datetime;
SET @curr_date = getutcdate();
  IF NOT EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- historical
  IF EXISTS(SELECT * FROM deleted)
    update PIMS_PERSON_HIST set END_DATE_HIST = @curr_date where PERSON_ID in (select PERSON_ID from deleted) and END_DATE_HIST is null;

  IF EXISTS(SELECT * FROM inserted)
    insert into PIMS_PERSON_HIST ([PERSON_ID], [ADDRESS_ID], [SURNAME], [FIRST_NAME], [MIDDLE_NAMES], [NAME_SUFFIX], [PREFERRED_NAME], [BIRTH_DATE], [IS_DISABLED], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], _PERSON_HIST_ID, END_DATE_HIST, EFFECTIVE_DATE_HIST)
      select [PERSON_ID], [ADDRESS_ID], [SURNAME], [FIRST_NAME], [MIDDLE_NAMES], [NAME_SUFFIX], [PREFERRED_NAME], [BIRTH_DATE], [IS_DISABLED], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], (next value for [dbo].[PIMS_PERSON_H_ID_SEQ]) as [_PERSON_HIST_ID], null as [END_DATE_HIST], @curr_date as [EFFECTIVE_DATE_HIST] from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ADDRSS_A_S_IUD_TR
PRINT N'Create trigger dbo.PIMS_ADDRSS_A_S_IUD_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ADDRSS_A_S_IUD_TR] ON PIMS_ADDRESS FOR INSERT, UPDATE, DELETE AS
SET NOCOUNT ON
BEGIN TRY
DECLARE @curr_date datetime;
SET @curr_date = getutcdate();
  IF NOT EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- historical
  IF EXISTS(SELECT * FROM deleted)
    update PIMS_ADDRESS_HIST set END_DATE_HIST = @curr_date where ADDRESS_ID in (select ADDRESS_ID from deleted) and END_DATE_HIST is null;

  IF EXISTS(SELECT * FROM inserted)
    insert into PIMS_ADDRESS_HIST ([ADDRESS_ID], [ADDRESS_USAGE_TYPE_CODE], [REGION_CODE], [DISTRICT_CODE], [PROVINCE_STATE_ID], [COUNTRY_ID], [STREET_ADDRESS_1], [STREET_ADDRESS_2], [STREET_ADDRESS_3], [MUNICIPALITY_NAME], [POSTAL_CODE], [LATITUDE], [LONGITUDE], [COMMENT], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], _ADDRESS_HIST_ID, END_DATE_HIST, EFFECTIVE_DATE_HIST)
      select [ADDRESS_ID], [ADDRESS_USAGE_TYPE_CODE], [REGION_CODE], [DISTRICT_CODE], [PROVINCE_STATE_ID], [COUNTRY_ID], [STREET_ADDRESS_1], [STREET_ADDRESS_2], [STREET_ADDRESS_3], [MUNICIPALITY_NAME], [POSTAL_CODE], [LATITUDE], [LONGITUDE], [COMMENT], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], (next value for [dbo].[PIMS_ADDRESS_H_ID_SEQ]) as [_ADDRESS_HIST_ID], null as [END_DATE_HIST], @curr_date as [EFFECTIVE_DATE_HIST] from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_ORG_A_S_IUD_TR
PRINT N'Create trigger dbo.PIMS_ORG_A_S_IUD_TR'
GO
CREATE TRIGGER [dbo].[PIMS_ORG_A_S_IUD_TR] ON PIMS_ORGANIZATION FOR INSERT, UPDATE, DELETE AS
SET NOCOUNT ON
BEGIN TRY
DECLARE @curr_date datetime;
SET @curr_date = getutcdate();
  IF NOT EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted)
    RETURN;

  -- historical
  IF EXISTS(SELECT * FROM deleted)
    update PIMS_ORGANIZATION_HIST set END_DATE_HIST = @curr_date where ORGANIZATION_ID in (select ORGANIZATION_ID from deleted) and END_DATE_HIST is null;

  IF EXISTS(SELECT * FROM inserted)
    insert into PIMS_ORGANIZATION_HIST ([ORGANIZATION_ID], [PRNT_ORGANIZATION_ID], [ADDRESS_ID], [REGION_CODE], [DISTRICT_CODE], [ORGANIZATION_TYPE_CODE], [ORG_IDENTIFIER_TYPE_CODE], [ORGANIZATION_IDENTIFIER], [ORGANIZATION_NAME], [ORGANIZATION_ALIAS], [WEBSITE], [IS_DISABLED], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], _ORGANIZATION_HIST_ID, END_DATE_HIST, EFFECTIVE_DATE_HIST)
      select [ORGANIZATION_ID], [PRNT_ORGANIZATION_ID], [ADDRESS_ID], [REGION_CODE], [DISTRICT_CODE], [ORGANIZATION_TYPE_CODE], [ORG_IDENTIFIER_TYPE_CODE], [ORGANIZATION_IDENTIFIER], [ORGANIZATION_NAME], [ORGANIZATION_ALIAS], [WEBSITE], [IS_DISABLED], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], (next value for [dbo].[PIMS_ORGANIZATION_H_ID_SEQ]) as [_ORGANIZATION_HIST_ID], null as [END_DATE_HIST], @curr_date as [EFFECTIVE_DATE_HIST] from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create foreign key constraint PIM_ADUSGT_PIM_ADDRSS_FK
PRINT N'Create foreign key constraint PIM_ADUSGT_PIM_ADDRSS_FK'
GO
ALTER TABLE [dbo].[PIMS_ADDRESS]
	ADD FOREIGN KEY([ADDRESS_USAGE_TYPE_CODE])
	REFERENCES [dbo].[PIMS_ADDRESS_USAGE_TYPE]([ADDRESS_USAGE_TYPE_CODE])
	ON DELETE NO ACTION 
	ON UPDATE NO ACTION 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create foreign key constraint PIM_ADDRSS_PIM_ORG_FK
PRINT N'Create foreign key constraint PIM_ADDRSS_PIM_ORG_FK'
GO
ALTER TABLE [dbo].[PIMS_ORGANIZATION]
	ADD FOREIGN KEY([ADDRESS_ID])
	REFERENCES [dbo].[PIMS_ADDRESS]([ADDRESS_ID])
	ON DELETE NO ACTION 
	ON UPDATE NO ACTION 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create foreign key constraint PIM_ADDRSS_PIM_PERSON_FK
PRINT N'Create foreign key constraint PIM_ADDRSS_PIM_PERSON_FK'
GO
ALTER TABLE [dbo].[PIMS_PERSON]
	ADD FOREIGN KEY([ADDRESS_ID])
	REFERENCES [dbo].[PIMS_ADDRESS]([ADDRESS_ID])
	ON DELETE NO ACTION 
	ON UPDATE NO ACTION 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_PERSON_ADDRESS_HIST
PRINT N'Drop table dbo.PIMS_PERSON_ADDRESS_HIST'
GO
DROP TABLE [dbo].[PIMS_PERSON_ADDRESS_HIST]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_PERSON_ADDRESS_H_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_PERSON_ADDRESS_H_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_PERSON_ADDRESS_H_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_PERSON_ADDRESS_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_PERSON_ADDRESS_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_PERSON_ADDRESS_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_ORGANIZATION_ADDRESS_HIST
PRINT N'Drop table dbo.PIMS_ORGANIZATION_ADDRESS_HIST'
GO
DROP TABLE [dbo].[PIMS_ORGANIZATION_ADDRESS_HIST]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_ORGANIZATION_ADDRESS_H_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_ORGANIZATION_ADDRESS_H_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_ORGANIZATION_ADDRESS_H_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_ORGANIZATION_ADDRESS_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_ORGANIZATION_ADDRESS_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_ORGANIZATION_ADDRESS_ID_SEQ]
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