-- Script generated by Aqua Data Studio Schema Synchronization for MS SQL Server 2016 on Thu Mar 10 20:19:03 PST 2022
-- Execute this script on:
-- 		PIMS_23_01/dbo - This database/schema will be modified
-- to synchronize it with MS SQL Server 2016:
-- 		PIMS_23_00/dbo

-- We recommend backing up the database prior to executing the script.

SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDSCV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDSCV_FK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE_SCHOOL_VALUE]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCDSCV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDGNV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDGNV_FK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE_GENERAL_VALUE]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCDGNV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDDEL_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDDEL_FK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE_DELETE]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCDDEL_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDTRV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDTRV_FK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE_BCTRANSIT_VALUE]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCDTRV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDAMD_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCDAMD_FK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE_AMENDMENT]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCDAMD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJSCV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJSCV_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION_SCHOOL_VALUE]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCJSCV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJGNV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJGNV_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION_GENERAL_VALUE]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCJGNV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJDEL_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJDEL_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION_DELETE]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCJDEL_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJTRV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJTRV_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION_BCTRANSIT_VALUE]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCJTRV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJAMD_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCJAMD_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION_AMENDMENT]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCJAMD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAOWG_PIM_BCAOWN_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAOWG_PIM_BCAOWN_FK'
GO
ALTER TABLE [dbo].[BCA_OWNER]
	DROP CONSTRAINT [PIM_BCAOWG_PIM_BCAOWN_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAOWG_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAOWG_FK'
GO
ALTER TABLE [dbo].[BCA_OWNERSHIP_GROUP]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAOWG_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSPRG_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSPRG_FK'
GO
ALTER TABLE [dbo].[BCA_SPECIFIED_REGIONAL]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCSPRG_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSPMU_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSPMU_FK'
GO
ALTER TABLE [dbo].[BCA_SPECIFIED_MUNICIPAL]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCSPMU_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSVCA_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCSVCA_FK'
GO
ALTER TABLE [dbo].[BCA_SERVICE_AREA]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCSVCA_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCLCLA_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCLCLA_FK'
GO
ALTER TABLE [dbo].[BCA_LOCAL_AREA]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCLCLA_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCISLT_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCISLT_FK'
GO
ALTER TABLE [dbo].[BCA_ISLANDS_TRUST]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCISLT_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCIMPD_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCIMPD_FK'
GO
ALTER TABLE [dbo].[BCA_IMPROVEMENT_DISTRICT]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCIMPD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCGSVC_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCGSVC_FK'
GO
ALTER TABLE [dbo].[BCA_GENERAL_SERVICE]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCGSVC_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCELCT_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCELCT_FK'
GO
ALTER TABLE [dbo].[BCA_ELECTORAL_AREA]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCELCT_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCADFN_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCMNTX_PIM_BCADFN_FK'
GO
ALTER TABLE [dbo].[BCA_DEFINED]
	DROP CONSTRAINT [PIM_BCMNTX_PIM_BCADFN_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMNTX_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMNTX_FK'
GO
ALTER TABLE [dbo].[BCA_MINOR_TAXING]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCMNTX_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAVAL_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAVAL_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_VALUATION]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAVAL_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFSCV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFSCV_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_SCHOOL_VALUE]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCFSCV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFTRV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFTRV_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_BCTRANSIT_VALUE]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCFTRV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFAM_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFAM_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_AMENDMENT]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAFAM_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFADR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFADR_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_ADDRESS]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCFADR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFSA_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFSA_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_SALES]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAFSA_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCOILG_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCOILG_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_OIL_AND_GAS]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCOILG_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMANH_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMANH_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_MANUFACTURED_HOME]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCMANH_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMFOR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCMFOR_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_MANAGED_FOREST]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCMFOR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFLD_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFLD_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_LEGAL_DESCRIPTION]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAFLD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCLCHR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCLCHR_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_LAND_CHARACTERISTIC]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCLCHR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFGNV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFGNV_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_GENERAL_VALUE]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCFGNV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFARM_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCFARM_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_FARM]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCFARM_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFDE_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAFOR_PIM_BCAFDE_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_DESCRIPTION]
	DROP CONSTRAINT [PIM_BCAFOR_PIM_BCAFDE_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCAFOR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCAJUR_PIM_BCAFOR_FK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_RECORD]
	DROP CONSTRAINT [PIM_BCAJUR_PIM_BCAFOR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAJUR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAJUR_FK'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCAJUR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCASCV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCASCV_FK'
GO
ALTER TABLE [dbo].[BCA_AREA_SCHOOL_VALUE]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCASCV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAGNV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAGNV_FK'
GO
ALTER TABLE [dbo].[BCA_AREA_GENERAL_VALUE]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCAGNV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCADEL_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCADEL_FK'
GO
ALTER TABLE [dbo].[BCA_AREA_DELETE]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCADEL_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCATRV_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCATRV_FK'
GO
ALTER TABLE [dbo].[BCA_AREA_BCTRANSIT_VALUE]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCATRV_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAAMD_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCASAR_PIM_BCAAMD_FK'
GO
ALTER TABLE [dbo].[BCA_AREA_AMENDMENT]
	DROP CONSTRAINT [PIM_BCASAR_PIM_BCAAMD_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCASAR_FK
PRINT N'Drop foreign key constraint dbo.PIM_BCDADV_PIM_BCASAR_FK'
GO
ALTER TABLE [dbo].[BCA_ASSESSMENT_AREA]
	DROP CONSTRAINT [PIM_BCDADV_PIM_BCASAR_FK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCDSCV_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCDSCV_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DATA_ADVICE_SCHOOL_VALUE].[BCDSCV_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCDGNV_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCDGNV_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DATA_ADVICE_GENERAL_VALUE].[BCDGNV_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCDDEL_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCDDEL_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DATA_ADVICE_DELETE].[BCDDEL_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCDTRV_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCDTRV_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DATA_ADVICE_BCTRANSIT_VALUE].[BCDTRV_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCDAMD_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCDAMD_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DATA_ADVICE_AMENDMENT].[BCDAMD_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCJSCV_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCJSCV_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION_SCHOOL_VALUE].[BCJSCV_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCJGNV_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCJGNV_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION_GENERAL_VALUE].[BCJGNV_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCJDEL_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCJDEL_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION_DELETE].[BCJDEL_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCJTRV_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCJTRV_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION_BCTRANSIT_VALUE].[BCJTRV_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCJAMD_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCJAMD_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION_AMENDMENT].[BCJAMD_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAOWN_OWNERSHIP_GROUP_ID_IDX
PRINT N'Drop index dbo.BCAOWN_OWNERSHIP_GROUP_ID_IDX'
GO
DROP INDEX [dbo].[BCA_OWNER].[BCAOWN_OWNERSHIP_GROUP_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAOWG_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAOWG_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_OWNERSHIP_GROUP].[BCAOWG_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCSPRG_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCSPRG_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_SPECIFIED_REGIONAL].[BCSPRG_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCSPMU_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCSPMU_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_SPECIFIED_MUNICIPAL].[BCSPMU_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCSVCA_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCSVCA_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_SERVICE_AREA].[BCSVCA_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCLCLA_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCLCLA_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_LOCAL_AREA].[BCLCLA_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCISLT_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCISLT_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_ISLANDS_TRUST].[BCISLT_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCIMPD_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCIMPD_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_IMPROVEMENT_DISTRICT].[BCIMPD_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCGSVC_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCGSVC_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_GENERAL_SERVICE].[BCGSVC_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCELCT_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCELCT_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_ELECTORAL_AREA].[BCELCT_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCADFN_MINOR_TAXING_ID_IDX
PRINT N'Drop index dbo.BCADFN_MINOR_TAXING_ID_IDX'
GO
DROP INDEX [dbo].[BCA_DEFINED].[BCADFN_MINOR_TAXING_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCMNTX_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCMNTX_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_MINOR_TAXING].[BCMNTX_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAVAL_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAVAL_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_VALUATION].[BCAVAL_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCFSCV_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCFSCV_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_SCHOOL_VALUE].[BCFSCV_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCFTRV_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCFTRV_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_BCTRANSIT_VALUE].[BCFTRV_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAFAM_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAFAM_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_AMENDMENT].[BCAFAM_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCFADR_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCFADR_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_ADDRESS].[BCFADR_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAFOR_JURISDICTION_CODE_IDX
PRINT N'Drop index dbo.BCAFOR_JURISDICTION_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_RECORD].[BCAFOR_JURISDICTION_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAFSA_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAFSA_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_SALES].[BCAFSA_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCOILG_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCOILG_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_OIL_AND_GAS].[BCOILG_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCMANH_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCMANH_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_MANUFACTURED_HOME].[BCMANH_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCMFOR_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCMFOR_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_MANAGED_FOREST].[BCMFOR_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAFLD_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAFLD_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_LEGAL_DESCRIPTION].[BCAFLD_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCLCHR_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCLCHR_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_LAND_CHARACTERISTIC].[BCLCHR_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCFGNV_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCFGNV_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_GENERAL_VALUE].[BCFGNV_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCFARM_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCFARM_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_FARM].[BCFARM_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAFDE_ROLL_NUMBER_IDX
PRINT N'Drop index dbo.BCAFDE_ROLL_NUMBER_IDX'
GO
DROP INDEX [dbo].[BCA_FOLIO_DESCRIPTION].[BCAFDE_ROLL_NUMBER_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAJUR_AREA_CODE_IDX
PRINT N'Drop index dbo.BCAJUR_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_JURISDICTION].[BCAJUR_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCASCV_AREA_CODE_IDX
PRINT N'Drop index dbo.BCASCV_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_AREA_SCHOOL_VALUE].[BCASCV_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAGNV_AREA_CODE_IDX
PRINT N'Drop index dbo.BCAGNV_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_AREA_GENERAL_VALUE].[BCAGNV_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCADEL_AREA_CODE_IDX
PRINT N'Drop index dbo.BCADEL_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_AREA_DELETE].[BCADEL_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCATRV_AREA_CODE_IDX
PRINT N'Drop index dbo.BCATRV_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_AREA_BCTRANSIT_VALUE].[BCATRV_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCAAMD_AREA_CODE_IDX
PRINT N'Drop index dbo.BCAAMD_AREA_CODE_IDX'
GO
DROP INDEX [dbo].[BCA_AREA_AMENDMENT].[BCAAMD_AREA_CODE_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop index dbo.BCASAR_DATA_ADVICE_ID_IDX
PRINT N'Drop index dbo.BCASAR_DATA_ADVICE_ID_IDX'
GO
DROP INDEX [dbo].[BCA_ASSESSMENT_AREA].[BCASAR_DATA_ADVICE_ID_IDX]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.BCAOWN_PK
PRINT N'Drop primary key constraint dbo.BCAOWN_PK'
GO
ALTER TABLE [dbo].[BCA_OWNER]
	DROP CONSTRAINT [BCAOWN_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.BCAOWG_PK
PRINT N'Drop primary key constraint dbo.BCAOWG_PK'
GO
ALTER TABLE [dbo].[BCA_OWNERSHIP_GROUP]
	DROP CONSTRAINT [BCAOWG_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.BCMNTX_PK
PRINT N'Drop primary key constraint dbo.BCMNTX_PK'
GO
ALTER TABLE [dbo].[BCA_MINOR_TAXING]
	DROP CONSTRAINT [BCMNTX_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.BCAFOR_PK
PRINT N'Drop primary key constraint dbo.BCAFOR_PK'
GO
ALTER TABLE [dbo].[BCA_FOLIO_RECORD]
	DROP CONSTRAINT [BCAFOR_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.PK__BCA_JURI__A318B2B5A46D67D0
PRINT N'Drop primary key constraint dbo.PK__BCA_JURI__A318B2B5A46D67D0'
GO
ALTER TABLE [dbo].[BCA_JURISDICTION]
	DROP CONSTRAINT [PK__BCA_JURI__A318B2B5A46D67D0]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.PK__BCA_ASSE__FC7CF8094B7DBA6B
PRINT N'Drop primary key constraint dbo.PK__BCA_ASSE__FC7CF8094B7DBA6B'
GO
ALTER TABLE [dbo].[BCA_ASSESSMENT_AREA]
	DROP CONSTRAINT [PK__BCA_ASSE__FC7CF8094B7DBA6B]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop primary key constraint dbo.BCDADV_PK
PRINT N'Drop primary key constraint dbo.BCDADV_PK'
GO
ALTER TABLE [dbo].[BCA_DATA_ADVICE]
	DROP CONSTRAINT [BCDADV_PK]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE_SCHOOL_VALUE
PRINT N'Drop table dbo.BCA_DATA_ADVICE_SCHOOL_VALUE'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE_SCHOOL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE_GENERAL_VALUE
PRINT N'Drop table dbo.BCA_DATA_ADVICE_GENERAL_VALUE'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE_GENERAL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE_DELETE
PRINT N'Drop table dbo.BCA_DATA_ADVICE_DELETE'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE_DELETE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE_BCTRANSIT_VALUE
PRINT N'Drop table dbo.BCA_DATA_ADVICE_BCTRANSIT_VALUE'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE_BCTRANSIT_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE_AMENDMENT
PRINT N'Drop table dbo.BCA_DATA_ADVICE_AMENDMENT'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE_AMENDMENT]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION_SCHOOL_VALUE
PRINT N'Drop table dbo.BCA_JURISDICTION_SCHOOL_VALUE'
GO
DROP TABLE [dbo].[BCA_JURISDICTION_SCHOOL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION_GENERAL_VALUE
PRINT N'Drop table dbo.BCA_JURISDICTION_GENERAL_VALUE'
GO
DROP TABLE [dbo].[BCA_JURISDICTION_GENERAL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION_DELETE
PRINT N'Drop table dbo.BCA_JURISDICTION_DELETE'
GO
DROP TABLE [dbo].[BCA_JURISDICTION_DELETE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION_BCTRANSIT_VALUE
PRINT N'Drop table dbo.BCA_JURISDICTION_BCTRANSIT_VALUE'
GO
DROP TABLE [dbo].[BCA_JURISDICTION_BCTRANSIT_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION_AMENDMENT
PRINT N'Drop table dbo.BCA_JURISDICTION_AMENDMENT'
GO
DROP TABLE [dbo].[BCA_JURISDICTION_AMENDMENT]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_OWNER
PRINT N'Drop table dbo.BCA_OWNER'
GO
DROP TABLE [dbo].[BCA_OWNER]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.BCA_OWNER_ID_SEQ
PRINT N'Drop sequence dbo.BCA_OWNER_ID_SEQ'
GO
DROP SEQUENCE [dbo].[BCA_OWNER_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_OWNERSHIP_GROUP
PRINT N'Drop table dbo.BCA_OWNERSHIP_GROUP'
GO
DROP TABLE [dbo].[BCA_OWNERSHIP_GROUP]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_SPECIFIED_REGIONAL
PRINT N'Drop table dbo.BCA_SPECIFIED_REGIONAL'
GO
DROP TABLE [dbo].[BCA_SPECIFIED_REGIONAL]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_SPECIFIED_MUNICIPAL
PRINT N'Drop table dbo.BCA_SPECIFIED_MUNICIPAL'
GO
DROP TABLE [dbo].[BCA_SPECIFIED_MUNICIPAL]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_SERVICE_AREA
PRINT N'Drop table dbo.BCA_SERVICE_AREA'
GO
DROP TABLE [dbo].[BCA_SERVICE_AREA]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_LOCAL_AREA
PRINT N'Drop table dbo.BCA_LOCAL_AREA'
GO
DROP TABLE [dbo].[BCA_LOCAL_AREA]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_ISLANDS_TRUST
PRINT N'Drop table dbo.BCA_ISLANDS_TRUST'
GO
DROP TABLE [dbo].[BCA_ISLANDS_TRUST]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_IMPROVEMENT_DISTRICT
PRINT N'Drop table dbo.BCA_IMPROVEMENT_DISTRICT'
GO
DROP TABLE [dbo].[BCA_IMPROVEMENT_DISTRICT]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_GENERAL_SERVICE
PRINT N'Drop table dbo.BCA_GENERAL_SERVICE'
GO
DROP TABLE [dbo].[BCA_GENERAL_SERVICE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_ELECTORAL_AREA
PRINT N'Drop table dbo.BCA_ELECTORAL_AREA'
GO
DROP TABLE [dbo].[BCA_ELECTORAL_AREA]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DEFINED
PRINT N'Drop table dbo.BCA_DEFINED'
GO
DROP TABLE [dbo].[BCA_DEFINED]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_MINOR_TAXING
PRINT N'Drop table dbo.BCA_MINOR_TAXING'
GO
DROP TABLE [dbo].[BCA_MINOR_TAXING]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.BCA_MINOR_TAXING_ID_SEQ
PRINT N'Drop sequence dbo.BCA_MINOR_TAXING_ID_SEQ'
GO
DROP SEQUENCE [dbo].[BCA_MINOR_TAXING_ID_SEQ]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_VALUATION
PRINT N'Drop table dbo.BCA_FOLIO_VALUATION'
GO
DROP TABLE [dbo].[BCA_FOLIO_VALUATION]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_SCHOOL_VALUE
PRINT N'Drop table dbo.BCA_FOLIO_SCHOOL_VALUE'
GO
DROP TABLE [dbo].[BCA_FOLIO_SCHOOL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_BCTRANSIT_VALUE
PRINT N'Drop table dbo.BCA_FOLIO_BCTRANSIT_VALUE'
GO
DROP TABLE [dbo].[BCA_FOLIO_BCTRANSIT_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_AMENDMENT
PRINT N'Drop table dbo.BCA_FOLIO_AMENDMENT'
GO
DROP TABLE [dbo].[BCA_FOLIO_AMENDMENT]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_ADDRESS
PRINT N'Drop table dbo.BCA_FOLIO_ADDRESS'
GO
DROP TABLE [dbo].[BCA_FOLIO_ADDRESS]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_SALES
PRINT N'Drop table dbo.BCA_FOLIO_SALES'
GO
DROP TABLE [dbo].[BCA_FOLIO_SALES]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_OIL_AND_GAS
PRINT N'Drop table dbo.BCA_FOLIO_OIL_AND_GAS'
GO
DROP TABLE [dbo].[BCA_FOLIO_OIL_AND_GAS]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_MANUFACTURED_HOME
PRINT N'Drop table dbo.BCA_FOLIO_MANUFACTURED_HOME'
GO
DROP TABLE [dbo].[BCA_FOLIO_MANUFACTURED_HOME]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_MANAGED_FOREST
PRINT N'Drop table dbo.BCA_FOLIO_MANAGED_FOREST'
GO
DROP TABLE [dbo].[BCA_FOLIO_MANAGED_FOREST]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_LEGAL_DESCRIPTION
PRINT N'Drop table dbo.BCA_FOLIO_LEGAL_DESCRIPTION'
GO
DROP TABLE [dbo].[BCA_FOLIO_LEGAL_DESCRIPTION]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_LAND_CHARACTERISTIC
PRINT N'Drop table dbo.BCA_FOLIO_LAND_CHARACTERISTIC'
GO
DROP TABLE [dbo].[BCA_FOLIO_LAND_CHARACTERISTIC]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_GENERAL_VALUE
PRINT N'Drop table dbo.BCA_FOLIO_GENERAL_VALUE'
GO
DROP TABLE [dbo].[BCA_FOLIO_GENERAL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_FARM
PRINT N'Drop table dbo.BCA_FOLIO_FARM'
GO
DROP TABLE [dbo].[BCA_FOLIO_FARM]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_DESCRIPTION
PRINT N'Drop table dbo.BCA_FOLIO_DESCRIPTION'
GO
DROP TABLE [dbo].[BCA_FOLIO_DESCRIPTION]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_FOLIO_RECORD
PRINT N'Drop table dbo.BCA_FOLIO_RECORD'
GO
DROP TABLE [dbo].[BCA_FOLIO_RECORD]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_JURISDICTION
PRINT N'Drop table dbo.BCA_JURISDICTION'
GO
DROP TABLE [dbo].[BCA_JURISDICTION]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_AREA_SCHOOL_VALUE
PRINT N'Drop table dbo.BCA_AREA_SCHOOL_VALUE'
GO
DROP TABLE [dbo].[BCA_AREA_SCHOOL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_AREA_GENERAL_VALUE
PRINT N'Drop table dbo.BCA_AREA_GENERAL_VALUE'
GO
DROP TABLE [dbo].[BCA_AREA_GENERAL_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_AREA_DELETE
PRINT N'Drop table dbo.BCA_AREA_DELETE'
GO
DROP TABLE [dbo].[BCA_AREA_DELETE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_AREA_BCTRANSIT_VALUE
PRINT N'Drop table dbo.BCA_AREA_BCTRANSIT_VALUE'
GO
DROP TABLE [dbo].[BCA_AREA_BCTRANSIT_VALUE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_AREA_AMENDMENT
PRINT N'Drop table dbo.BCA_AREA_AMENDMENT'
GO
DROP TABLE [dbo].[BCA_AREA_AMENDMENT]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_ASSESSMENT_AREA
PRINT N'Drop table dbo.BCA_ASSESSMENT_AREA'
GO
DROP TABLE [dbo].[BCA_ASSESSMENT_AREA]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop table dbo.BCA_DATA_ADVICE
PRINT N'Drop table dbo.BCA_DATA_ADVICE'
GO
DROP TABLE [dbo].[BCA_DATA_ADVICE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

-- Drop sequence dbo.BCA_DATA_ADVICE_ID_SEQ
PRINT N'Drop sequence dbo.BCA_DATA_ADVICE_ID_SEQ'
GO
DROP SEQUENCE [dbo].[BCA_DATA_ADVICE_ID_SEQ]
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