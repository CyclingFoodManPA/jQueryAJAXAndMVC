USE master;
GO


DROP DATABASE IF EXISTS jQueryAjaxDB;
GO


CREATE DATABASE jQueryAjaxDB;
GO


USE [jQueryAjaxDB]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Salary] [int] NULL,
	[ImagePath] [varchar](500) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO


USE [master]
GO
ALTER DATABASE [jQueryAjaxDB] SET  READ_WRITE 
GO

INSERT INTO dbo.Employee ([Name], Position, Office, Salary)
VALUES ('Keith', 'HMFIC', 'At Desk', 90000)
	, ('Connie', 'The Boss', 'Family Room', 45000)
	, ('Christina', 'Daughter', 'In her car', 10000);
GO