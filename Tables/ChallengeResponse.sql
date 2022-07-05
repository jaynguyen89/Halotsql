CREATE TABLE [dbo].[ChallengeResponse]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[AccountId] NVARCHAR(65) NOT NULL,
	[ChallengeId] NVARCHAR(65) NOT NULL,
	[Response] NVARCHAR(50) NOT NULL,
	[UpdatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	CONSTRAINT [PK_ChallengeResponse_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_ChallengeResponse_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([Id]),
	CONSTRAINT [FK_ChallengeResponse_Challenge_ChallengeId] FOREIGN KEY ([ChallengeId]) REFERENCES [dbo].[Challenge] ([Id])
)
