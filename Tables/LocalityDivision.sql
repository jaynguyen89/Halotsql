CREATE TABLE [dbo].[LocalityDivision]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[LocalityId] NVARCHAR(65) NOT NULL,
	[DivisionType] TINYINT NOT NULL DEFAULT 0,
	[Name] NVARCHAR(80) NOT NULL,
	[Abbreviation] NVARCHAR(10) DEFAULT NULL,
	CONSTRAINT [PK_State_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_State_Locality_LocalityId] FOREIGN KEY ([LocalityId]) REFERENCES [dbo].[Locality] ([Id])
)
