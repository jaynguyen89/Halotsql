CREATE TABLE [dbo].[AccountRole]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[AccountId] NVARCHAR(65) NOT NULL,
	[RoleId] NVARCHAR(65) NOT NULL,
	[IsEffective] BIT NOT NULL DEFAULT 0,
	[EffectiveUntil] DATETIME2(7) DEFAULT NULL,
	[CreatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	[CreatedById] NVARCHAR(65) DEFAULT NULL,
	CONSTRAINT [PK_AccountRole_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_AccountRole_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([Id]),
	CONSTRAINT [FK_AccountRole_Role_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([Id]),
	CONSTRAINT [FK_AccountRole_Account_CreatedById] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[Account] ([Id])
)
