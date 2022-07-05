CREATE TABLE [dbo].[Challenge]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[Question] NVARCHAR(200) NOT NULL,
	[CreatedById] NVARCHAR(65) DEFAULT NULL,
	[CreatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	CONSTRAINT [PK_ChallengeQuestion_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Challenge_Account_CreatedById] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[Account] ([Id])
)
