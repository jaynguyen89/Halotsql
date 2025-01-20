CREATE TABLE [dbo].[Occupation]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[ParentId] NVARCHAR(65) DEFAULT NULL,
	[Name] NVARCHAR(60) NOT NULL,
	[Description] NVARCHAR(250) DEFAULT NULL,
	CONSTRAINT [PK_Occupation_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Occupation_ParentId_Id] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Occupation] ([Id])
)
