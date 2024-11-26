-- Create Database & Table for Logon:
use master
go
create database dbLogon
Go
use dbLogon
Go
CREATE TABLE LogonAuditing
(
	SessionId int,
	LogonTime datetime,
	HostName varchar(500),
	ProgramName varchar(500),
	LoginName varchar(500),
	ClientHost varchar(500)
)
GO
USE Master
GO
--Create Logon Trigger:
-- Creating DDL trigger for logon
CREATE TRIGGER utrg_LogonAudit
ON ALL SERVER
FOR LOGON
AS
BEGIN
	DECLARE @LogonTriggerData xml,
			@EventTime datetime,
			@LoginName varchar(50),
			@ClientHost varchar(50),
			@LoginType varchar(50),
			@HostName varchar(50),
			@AppName varchar(500)
	SET @LogonTriggerData = eventdata()
	SET @EventTime = @LogonTriggerData.value('(/EVENT_INSTANCE/PostTime)[1]', 'datetime')
	SET @LoginName = @LogonTriggerData.value('(/EVENT_INSTANCE/LoginName)[1]', 'varchar(50)')
	SET @ClientHost = @LogonTriggerData.value('(/EVENT_INSTANCE/ClientHost)[1]', 'varchar(50)')
	SET @HostName = HOST_NAME()
	SET @AppName = APP_NAME()--,program_name()

	INSERT INTO dbLogon.dbo.LogonAuditing(SessionId,LogonTime,HostName,ProgramName,LoginName,ClientHost)
		SELECT @@spid,@EventTime,@HostName,@AppName,@LoginName,@ClientHost
END
GO
SELECT * FROM LogonAuditing
GO
--Delete LogonTrigger:
USE master
GO
DROP TRIGGER LogonAuditTrigger ON ALL SERVER
