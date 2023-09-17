USE [master]
GO

/****** Object:  LinkedServer [EPEDPDBSQLCLU]    Script Date: 9/17/2023 7:40:35 PM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'EPEDPDBSQLCLU', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'EPEDPDBSQLCLU',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'rpc', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'rpc out', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'EPEDPDBSQLCLU', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

