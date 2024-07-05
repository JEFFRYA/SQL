CREATE TABLE [dbo].[RefreshTokenHistory](
	[IdRefreshTokenHistory] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[IdUserToken] [int] NULL,
	[Token] [varchar](200) NULL,
	[RefreshToken] [varchar](200) NULL,
	[CreationDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[IsValidToken] AS (
			CASE 
				WHEN [ExpirationDate] < getdate() 
					THEN CONVERT([bit],(0)) 
				ELSE CONVERT([bit],(1)) 
			END
		)
)

INSERT INTO [dbo].[RefreshTokenHistory]
(
	[IdUserToken],
	[Token],
	[RefreshToken],
	[CreationDate],
	[ExpirationDate]
)
VALUES
(
	1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxIiwibmJmIjoxNzExOTIwNDYwLCJleHAiOjE3MTE5MjA1MjAsImlhdCI6MTcxMTkyMDQ2MH0.hyYFJOEcZPQ7M1sIBWcB-cclI7QOHrfOSx5ASss5B80',
    'hdmV7WnZtOxHY0PlGox4/RG4+HqS+0ba3xN6FlZvF1Dg2xekse6juvDzNy08yHo2nF8yC3QjN3IVIYIJ3LA53w==',
    '2024-03-31 15:27:41.000',
    '2024-03-31 15:30:41.000'
)