-- Script generated by Aqua Data Studio Schema Synchronization for MS SQL Server 2016 on Fri Apr 01 15:46:55 PDT 2022
-- Execute this script on:
-- 		PSP_PIMS_S25_00/dbo - This database/schema will be modified
-- to synchronize it with MS SQL Server 2016:
-- 		PSP_PIMS_S24_00/dbo

-- We recommend backing up the database prior to executing the script.

SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RSFLPR_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_RSFLPR_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_RSFLPR_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RSFLPR_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_RSFLPR_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_RSFLPR_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RSFLPR_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_RSFLPR_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_RSFLPR_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_RSHPRT_PIM_RSFLPR_FK
PRINT N'Drop foreign key constraint dbo.PIM_RSHPRT_PIM_RSFLPR_FK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE]
	DROP CONSTRAINT [PIM_RSHPRT_PIM_RSFLPR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_RESRCH_PIM_RSFLPR_FK
PRINT N'Drop foreign key constraint dbo.PIM_RESRCH_PIM_RSFLPR_FK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE]
	DROP CONSTRAINT [PIM_RESRCH_PIM_RSFLPR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_RQSRCT_PIM_RESRCH_FK
PRINT N'Drop foreign key constraint dbo.PIM_RQSRCT_PIM_RESRCH_FK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE]
	DROP CONSTRAINT [PIM_RQSRCT_PIM_RESRCH_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_PERSON_PIM_RESRCH_FK
PRINT N'Drop foreign key constraint dbo.PIM_PERSON_PIM_RESRCH_FK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE]
	DROP CONSTRAINT [PIM_PERSON_PIM_RESRCH_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_ORG_PIM_RESRCH_FK
PRINT N'Drop foreign key constraint dbo.PIM_ORG_PIM_RESRCH_FK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE]
	DROP CONSTRAINT [PIM_ORG_PIM_RESRCH_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.RSFLPR_RESEARCH_PURPOSE_TYPE_CODE_IDX
PRINT N'Drop index dbo.RSFLPR_RESEARCH_PURPOSE_TYPE_CODE_IDX'
GO
DROP INDEX [dbo].[PIMS_RESEARCH_FILE_PURPOSE].[RSFLPR_RESEARCH_PURPOSE_TYPE_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.RSFLPR_RESEARCH_FILE_ID_IDX
PRINT N'Drop index dbo.RSFLPR_RESEARCH_FILE_ID_IDX'
GO
DROP INDEX [dbo].[PIMS_RESEARCH_FILE_PURPOSE].[RSFLPR_RESEARCH_FILE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RSHPRT_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_RSHPRT_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_RSHPRT_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RSHPRT_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_RSHPRT_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_RSHPRT_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RESRCH_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_RESRCH_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_RESRCH_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PRSCRC_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_PRSCRC_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_PRSCRC_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RESRCH_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_RESRCH_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_RESRCH_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.RESRCH_REQUESTOR_ORGANIZATION_IDX
PRINT N'Drop index dbo.RESRCH_REQUESTOR_ORGANIZATION_IDX'
GO
DROP INDEX [dbo].[PIMS_RESEARCH_FILE].[RESRCH_REQUESTOR_ORGANIZATION_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.RESRCH_REQUESTOR_NAME_IDX
PRINT N'Drop index dbo.RESRCH_REQUESTOR_NAME_IDX'
GO
DROP INDEX [dbo].[PIMS_RESEARCH_FILE].[RESRCH_REQUESTOR_NAME_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.RESRCH_REQUEST_SOURCE_TYPE_CODE_IDX
PRINT N'Drop index dbo.RESRCH_REQUEST_SOURCE_TYPE_CODE_IDX'
GO
DROP INDEX [dbo].[PIMS_RESEARCH_FILE].[RESRCH_REQUEST_SOURCE_TYPE_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PRSCRC_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_PRSCRC_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_PRSCRC_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_PRSCRC_A_S_IUD_TR
PRINT N'Drop trigger dbo.PIMS_PRSCRC_A_S_IUD_TR'
GO
DROP TRIGGER [dbo].[PIMS_PRSCRC_A_S_IUD_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RESRCH_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_RESRCH_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_RESRCH_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RQSRCT_I_S_U_TR
PRINT N'Drop trigger dbo.PIMS_RQSRCT_I_S_U_TR'
GO
DROP TRIGGER [dbo].[PIMS_RQSRCT_I_S_U_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop trigger dbo.PIMS_RQSRCT_I_S_I_TR
PRINT N'Drop trigger dbo.PIMS_RQSRCT_I_S_I_TR'
GO
DROP TRIGGER [dbo].[PIMS_RQSRCT_I_S_I_TR]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop unique constraint dbo.PIMS_RSFLPR_H_UK
PRINT N'Drop unique constraint dbo.PIMS_RSFLPR_H_UK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE_HIST]
	DROP CONSTRAINT [PIMS_RSFLPR_H_UK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.PIMS_RSFLPR_H_PK
PRINT N'Drop primary key constraint dbo.PIMS_RSFLPR_H_PK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE_HIST]
	DROP CONSTRAINT [PIMS_RSFLPR_H_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.RSFLPR_PK
PRINT N'Drop primary key constraint dbo.RSFLPR_PK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE]
	DROP CONSTRAINT [RSFLPR_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_RESEARCH_FILE_PURPOSE
PRINT N'Drop table dbo.PIMS_RESEARCH_FILE_PURPOSE'
GO
DROP TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.RSHPRT_PK
PRINT N'Drop primary key constraint dbo.RSHPRT_PK'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_PURPOSE_TYPE]
	DROP CONSTRAINT [RSHPRT_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop view dbo.PIMS_CONTACT_MGR_VW
PRINT N'Drop view dbo.PIMS_CONTACT_MGR_VW'
GO
DROP VIEW [dbo].[PIMS_CONTACT_MGR_VW]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.RQSRCT_PK
PRINT N'Drop primary key constraint dbo.RQSRCT_PK'
GO
ALTER TABLE [dbo].[PIMS_REQUEST_SOURCE_TYPE]
	DROP CONSTRAINT [RQSRCT_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_RESEARCH_FILE_PURPOSE_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_RESEARCH_FILE_PURPOSE_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_RESEARCH_FILE_PURPOSE_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_RESEARCH_FILE
PRINT N'Alter table dbo.PIMS_RESEARCH_FILE'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE]
	DROP COLUMN [REQUEST_SOURCE_TYPE_CODE], [REQUESTOR_NAME], [REQUESTOR_ORGANIZATION], [REQUEST_DATE], [ROAD_NAME], [ROAD_ALIAS], [REQUEST_DESCRIPTION], [REQUEST_SOURCE_DESCRIPTION], [RESEARCH_RESULT], [IS_EXPROPRIATION], [EXPROPRIATION_NOTES], [RESEARCH_COMPLETION_DATE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_PROPERTY_RESEARCH_FILE
PRINT N'Alter table dbo.PIMS_PROPERTY_RESEARCH_FILE'
GO
ALTER TABLE [dbo].[PIMS_PROPERTY_RESEARCH_FILE]
	DROP COLUMN [PROPERTY_NAME]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_PROPERTY_RESEARCH_FILE_HIST
PRINT N'Alter table dbo.PIMS_PROPERTY_RESEARCH_FILE_HIST'
GO
ALTER TABLE [dbo].[PIMS_PROPERTY_RESEARCH_FILE_HIST]
	DROP COLUMN [PROPERTY_NAME]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_RESEARCH_FILE_HIST
PRINT N'Alter table dbo.PIMS_RESEARCH_FILE_HIST'
GO
ALTER TABLE [dbo].[PIMS_RESEARCH_FILE_HIST]
	DROP COLUMN [REQUEST_SOURCE_TYPE_CODE], [REQUESTOR_NAME], [REQUESTOR_ORGANIZATION], [REQUEST_DATE], [REQUEST_SOURCE_DESCRIPTION], [IS_EXPROPRIATION], [RESEARCH_COMPLETION_DATE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Alter table dbo.PIMS_PROP_PROP_TENURE_TYPE
PRINT N'Alter table dbo.PIMS_PROP_PROP_TENURE_TYPE'
GO
ALTER TABLE [dbo].[PIMS_PROP_PROP_TENURE_TYPE] DROP CONSTRAINT [PRPRTT_PROPERTY_TENURE_TYPE_CODE_DEF]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[PIMS_PROP_PROP_TENURE_TYPE] ADD CONSTRAINT "PRPRTT_PROPERTY_TENURE_TYPE_CODE_DEF" DEFAULT 'UNKNOWN' FOR [PROPERTY_TENURE_TYPE_CODE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create view dbo.PIMS_CONTACT_MGR_VW
PRINT N'Create view dbo.PIMS_CONTACT_MGR_VW'
GO
CREATE VIEW [dbo].[PIMS_CONTACT_MGR_VW] AS
  SELECT CONCAT('P', PER.PERSON_ID)                                                                              AS ID
       , PER.PERSON_ID
       , ORG.ORGANIZATION_ID                                                                                     AS ORGANIZATION_ID                
       , PER.IS_DISABLED
       , TRIM(CONCAT_WS(' ', NULLIF(PER.FIRST_NAME, ''), NULLIF(PER.MIDDLE_NAMES, ''), NULLIF(PER.SURNAME, ''))) AS SUMMARY
       , PER.SURNAME
       , PER.FIRST_NAME
       , PER.MIDDLE_NAMES
       , ORG.ORGANIZATION_NAME                                                                                   AS ORGANIZATION_NAME
       , PAD.ADDRESS_ID
       , ADR.STREET_ADDRESS_1                                                                                    AS MAILING_ADDRESS
       , ADR.MUNICIPALITY_NAME
       , PRV.PROVINCE_STATE_CODE                                                                                 AS PROVINCE_STATE
       , COALESCE(PVW.WORK_EMAIL, PVW.PERSONAL_EMAIL)                                                            AS EMAIL_ADDRESS
  FROM   PIMS_PERSON              PER                                                         LEFT JOIN
         PIMS_PERSON_ADDRESS      PAD ON PAD.PERSON_ID                = PER.PERSON_ID   
                                     AND PAD.ADDRESS_USAGE_TYPE_CODE  = 'MAILING'             LEFT JOIN
         PIMS_ADDRESS             ADR ON ADR.ADDRESS_ID               = PAD.ADDRESS_ID        LEFT JOIN 
         PIMS_PROVINCE_STATE      PRV ON PRV.PROVINCE_STATE_ID        = ADR.PROVINCE_STATE_ID LEFT JOIN
         PIMS_PERSON_CONTACT_VW   PVW ON PVW.PERSON_ID                = PER.PERSON_ID         LEFT JOIN
         (SELECT   PERSON_ID
                 , MAX(ORGANIZATION_ID) as ORGANIZATION_ID 
          FROM     PIMS_PERSON_ORGANIZATION
          GROUP BY PERSON_ID) as POR  ON POR.PERSON_ID                = PER.PERSON_ID         LEFT JOIN
         PIMS_ORGANIZATION        ORG ON ORG.ORGANIZATION_ID          = POR.ORGANIZATION_ID 
  UNION
  SELECT CONCAT('O', ORG.ORGANIZATION_ID)
       , NULL
       , ORG.ORGANIZATION_ID
       , ORG.IS_DISABLED
       , ORG.ORGANIZATION_NAME
       , NULL
       , NULL                            
       , NULL                                                        
       , ORG.ORGANIZATION_NAME
       , OAD.ADDRESS_ID
       , ADR.STREET_ADDRESS_1
       , ADR.MUNICIPALITY_NAME                     
       , PRV.PROVINCE_STATE_CODE
       , CON.CONTACT_METHOD_VALUE 
  FROM   PIMS_ORGANIZATION         ORG                                                         LEFT JOIN 
         PIMS_ORGANIZATION_ADDRESS OAD ON OAD.ORGANIZATION_ID          = ORG.ORGANIZATION_ID
                                      AND OAD.ADDRESS_USAGE_TYPE_CODE  = 'MAILING'             LEFT JOIN
         PIMS_ADDRESS              ADR ON ADR.ADDRESS_ID               = OAD.ADDRESS_ID        LEFT JOIN 
         PIMS_PROVINCE_STATE       PRV ON PRV.PROVINCE_STATE_ID        = ADR.PROVINCE_STATE_ID LEFT JOIN
         PIMS_CONTACT_METHOD       CON ON CON.ORGANIZATION_ID          = ORG.ORGANIZATION_ID
                                      AND CON.CONTACT_METHOD_TYPE_CODE = 'WORKEMAIL'

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_RESRCH_I_S_I_TR
PRINT N'Create trigger dbo.PIMS_RESRCH_I_S_I_TR'
GO
CREATE TRIGGER [dbo].[PIMS_RESRCH_I_S_I_TR] ON PIMS_RESEARCH_FILE INSTEAD OF INSERT AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM inserted) 
    RETURN;

  
  insert into PIMS_RESEARCH_FILE ("RESEARCH_FILE_ID",
      "RESEARCH_FILE_STATUS_TYPE_CODE",
      "NAME",
      "RFILE_NUMBER",
      "CONCURRENCY_CONTROL_NUMBER",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USERID",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY")
    select "RESEARCH_FILE_ID",
      "RESEARCH_FILE_STATUS_TYPE_CODE",
      "NAME",
      "RFILE_NUMBER",
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

-- Create trigger dbo.PIMS_PRSCRC_A_S_IUD_TR
PRINT N'Create trigger dbo.PIMS_PRSCRC_A_S_IUD_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PRSCRC_A_S_IUD_TR] ON PIMS_PROPERTY_RESEARCH_FILE FOR INSERT, UPDATE, DELETE AS
SET NOCOUNT ON
BEGIN TRY
DECLARE @curr_date datetime;
SET @curr_date = getutcdate();
  IF NOT EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted) 
    RETURN;

  -- historical
  IF EXISTS(SELECT * FROM deleted)
    update PIMS_PROPERTY_RESEARCH_FILE_HIST set END_DATE_HIST = @curr_date where PROPERTY_RESEARCH_FILE_ID in (select PROPERTY_RESEARCH_FILE_ID from deleted) and END_DATE_HIST is null;
  
  IF EXISTS(SELECT * FROM inserted)
    insert into PIMS_PROPERTY_RESEARCH_FILE_HIST ([PROPERTY_RESEARCH_FILE_ID], [PROPERTY_ID], [RESEARCH_FILE_ID], [DISPLAY_ORDER], [IS_DISABLED], [APP_CREATE_TIMESTAMP], [APP_CREATE_USER_DIRECTORY], [APP_CREATE_USER_GUID], [APP_CREATE_USERID], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USER_DIRECTORY], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USERID], [CONCURRENCY_CONTROL_NUMBER], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], _PROPERTY_RESEARCH_FILE_HIST_ID, END_DATE_HIST, EFFECTIVE_DATE_HIST)
      select [PROPERTY_RESEARCH_FILE_ID], [PROPERTY_ID], [RESEARCH_FILE_ID], [DISPLAY_ORDER], [IS_DISABLED], [APP_CREATE_TIMESTAMP], [APP_CREATE_USER_DIRECTORY], [APP_CREATE_USER_GUID], [APP_CREATE_USERID], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USER_DIRECTORY], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USERID], [CONCURRENCY_CONTROL_NUMBER], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], (next value for [dbo].[PIMS_PROPERTY_RESEARCH_FILE_H_ID_SEQ]) as [_PROPERTY_RESEARCH_FILE_HIST_ID], null as [END_DATE_HIST], @curr_date as [EFFECTIVE_DATE_HIST] from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_PRSCRC_I_S_U_TR
PRINT N'Create trigger dbo.PIMS_PRSCRC_I_S_U_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PRSCRC_I_S_U_TR] ON PIMS_PROPERTY_RESEARCH_FILE INSTEAD OF UPDATE AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM deleted) 
    RETURN;

  -- validate concurrency control
  if exists (select 1 from inserted, deleted where inserted.CONCURRENCY_CONTROL_NUMBER != deleted.CONCURRENCY_CONTROL_NUMBER+1 AND inserted.PROPERTY_RESEARCH_FILE_ID = deleted.PROPERTY_RESEARCH_FILE_ID)
    raiserror('CONCURRENCY FAILURE.',16,1)


  -- update statement
  update PIMS_PROPERTY_RESEARCH_FILE
    set "PROPERTY_RESEARCH_FILE_ID" = inserted."PROPERTY_RESEARCH_FILE_ID",
      "PROPERTY_ID" = inserted."PROPERTY_ID",
      "RESEARCH_FILE_ID" = inserted."RESEARCH_FILE_ID",
      "DISPLAY_ORDER" = inserted."DISPLAY_ORDER",
      "IS_DISABLED" = inserted."IS_DISABLED",
      "APP_LAST_UPDATE_TIMESTAMP" = inserted."APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USER_DIRECTORY" = inserted."APP_LAST_UPDATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_USER_GUID" = inserted."APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USERID" = inserted."APP_LAST_UPDATE_USERID",
      "CONCURRENCY_CONTROL_NUMBER" = inserted."CONCURRENCY_CONTROL_NUMBER"
    , DB_LAST_UPDATE_TIMESTAMP = getutcdate()
    , DB_LAST_UPDATE_USERID = user_name()
    from PIMS_PROPERTY_RESEARCH_FILE
    inner join inserted
    on (PIMS_PROPERTY_RESEARCH_FILE.PROPERTY_RESEARCH_FILE_ID = inserted.PROPERTY_RESEARCH_FILE_ID);

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_RESRCH_A_S_IUD_TR
PRINT N'Create trigger dbo.PIMS_RESRCH_A_S_IUD_TR'
GO
CREATE TRIGGER [dbo].[PIMS_RESRCH_A_S_IUD_TR] ON PIMS_RESEARCH_FILE FOR INSERT, UPDATE, DELETE AS
SET NOCOUNT ON
BEGIN TRY
DECLARE @curr_date datetime;
SET @curr_date = getutcdate();
  IF NOT EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted) 
    RETURN;

  -- historical
  IF EXISTS(SELECT * FROM deleted)
    update PIMS_RESEARCH_FILE_HIST set END_DATE_HIST = @curr_date where RESEARCH_FILE_ID in (select RESEARCH_FILE_ID from deleted) and END_DATE_HIST is null;
  
  IF EXISTS(SELECT * FROM inserted)
    insert into PIMS_RESEARCH_FILE_HIST ([RESEARCH_FILE_ID], [RESEARCH_FILE_STATUS_TYPE_CODE], [NAME], [RFILE_NUMBER], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], _RESEARCH_FILE_HIST_ID, END_DATE_HIST, EFFECTIVE_DATE_HIST)
      select [RESEARCH_FILE_ID], [RESEARCH_FILE_STATUS_TYPE_CODE], [NAME], [RFILE_NUMBER], [CONCURRENCY_CONTROL_NUMBER], [APP_CREATE_TIMESTAMP], [APP_CREATE_USERID], [APP_CREATE_USER_GUID], [APP_CREATE_USER_DIRECTORY], [APP_LAST_UPDATE_TIMESTAMP], [APP_LAST_UPDATE_USERID], [APP_LAST_UPDATE_USER_GUID], [APP_LAST_UPDATE_USER_DIRECTORY], [DB_CREATE_TIMESTAMP], [DB_CREATE_USERID], [DB_LAST_UPDATE_TIMESTAMP], [DB_LAST_UPDATE_USERID], (next value for [dbo].[PIMS_RESEARCH_FILE_H_ID_SEQ]) as [_RESEARCH_FILE_HIST_ID], null as [END_DATE_HIST], @curr_date as [EFFECTIVE_DATE_HIST] from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_PRSCRC_I_S_I_TR
PRINT N'Create trigger dbo.PIMS_PRSCRC_I_S_I_TR'
GO
CREATE TRIGGER [dbo].[PIMS_PRSCRC_I_S_I_TR] ON PIMS_PROPERTY_RESEARCH_FILE INSTEAD OF INSERT AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM inserted) 
    RETURN;

  
  insert into PIMS_PROPERTY_RESEARCH_FILE ("PROPERTY_RESEARCH_FILE_ID",
      "PROPERTY_ID",
      "RESEARCH_FILE_ID",
      "DISPLAY_ORDER",
      "IS_DISABLED",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USER_DIRECTORY",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USERID",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USERID",
      "CONCURRENCY_CONTROL_NUMBER")
    select "PROPERTY_RESEARCH_FILE_ID",
      "PROPERTY_ID",
      "RESEARCH_FILE_ID",
      "DISPLAY_ORDER",
      "IS_DISABLED",
      "APP_CREATE_TIMESTAMP",
      "APP_CREATE_USER_DIRECTORY",
      "APP_CREATE_USER_GUID",
      "APP_CREATE_USERID",
      "APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USER_DIRECTORY",
      "APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USERID",
      "CONCURRENCY_CONTROL_NUMBER"
    from inserted;

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Create trigger dbo.PIMS_RESRCH_I_S_U_TR
PRINT N'Create trigger dbo.PIMS_RESRCH_I_S_U_TR'
GO
CREATE TRIGGER [dbo].[PIMS_RESRCH_I_S_U_TR] ON PIMS_RESEARCH_FILE INSTEAD OF UPDATE AS
SET NOCOUNT ON
BEGIN TRY
  IF NOT EXISTS(SELECT * FROM deleted) 
    RETURN;

  -- validate concurrency control
  if exists (select 1 from inserted, deleted where inserted.CONCURRENCY_CONTROL_NUMBER != deleted.CONCURRENCY_CONTROL_NUMBER+1 AND inserted.RESEARCH_FILE_ID = deleted.RESEARCH_FILE_ID)
    raiserror('CONCURRENCY FAILURE.',16,1)


  -- update statement
  update PIMS_RESEARCH_FILE
    set "RESEARCH_FILE_ID" = inserted."RESEARCH_FILE_ID",
      "RESEARCH_FILE_STATUS_TYPE_CODE" = inserted."RESEARCH_FILE_STATUS_TYPE_CODE",
      "NAME" = inserted."NAME",
      "RFILE_NUMBER" = inserted."RFILE_NUMBER",
      "CONCURRENCY_CONTROL_NUMBER" = inserted."CONCURRENCY_CONTROL_NUMBER",
      "APP_LAST_UPDATE_TIMESTAMP" = inserted."APP_LAST_UPDATE_TIMESTAMP",
      "APP_LAST_UPDATE_USERID" = inserted."APP_LAST_UPDATE_USERID",
      "APP_LAST_UPDATE_USER_GUID" = inserted."APP_LAST_UPDATE_USER_GUID",
      "APP_LAST_UPDATE_USER_DIRECTORY" = inserted."APP_LAST_UPDATE_USER_DIRECTORY"
    , DB_LAST_UPDATE_TIMESTAMP = getutcdate()
    , DB_LAST_UPDATE_USERID = user_name()
    from PIMS_RESEARCH_FILE
    inner join inserted
    on (PIMS_RESEARCH_FILE.RESEARCH_FILE_ID = inserted.RESEARCH_FILE_ID);

END TRY
BEGIN CATCH
   IF @@trancount > 0 ROLLBACK TRANSACTION
   EXEC pims_error_handling
END CATCH;

GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_RESEARCH_FILE_PURPOSE_HIST
PRINT N'Drop table dbo.PIMS_RESEARCH_FILE_PURPOSE_HIST'
GO
DROP TABLE [dbo].[PIMS_RESEARCH_FILE_PURPOSE_HIST]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.PIMS_RESEARCH_FILE_PURPOSE_H_ID_SEQ
PRINT N'Drop sequence dbo.PIMS_RESEARCH_FILE_PURPOSE_H_ID_SEQ'
GO
DROP SEQUENCE [dbo].[PIMS_RESEARCH_FILE_PURPOSE_H_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_RESEARCH_PURPOSE_TYPE
PRINT N'Drop table dbo.PIMS_RESEARCH_PURPOSE_TYPE'
GO
DROP TABLE [dbo].[PIMS_RESEARCH_PURPOSE_TYPE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.PIMS_REQUEST_SOURCE_TYPE
PRINT N'Drop table dbo.PIMS_REQUEST_SOURCE_TYPE'
GO
DROP TABLE [dbo].[PIMS_REQUEST_SOURCE_TYPE]
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
