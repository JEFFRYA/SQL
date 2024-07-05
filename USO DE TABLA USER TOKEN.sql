CREATE TABLE [dbo].[UserToken]
(
	[IdUserToken] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[UserTokenName] [varchar](30) NULL,
	[UserTokenPassword] [varchar](500) NULL
)

INSERT INTO [dbo].[UserToken]
(
	[UserTokenName],
	[UserTokenPassword]
)
VALUES
('UserTokenAPI','AKIAZ7KBHHMS2HJ6EI5G')