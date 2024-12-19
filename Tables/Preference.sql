CREATE TABLE [dbo].[Preference]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[AccountId] NVARCHAR(65) NOT NULL,
	[ApplicationTheme] TINYINT NOT NULL DEFAULT 0,
	[ApplicationLanguage] TINYINT NOT NULL DEFAULT 0,
	[DataFormat] NVARCHAR(2000) NOT NULL, -- JSON string {dataType: Date|Time|Number|UnitSystem, format: number}
	[Privacy] NVARCHAR(4000) NOT NULL, -- JSON string to control the display of profile information
	[UpdatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	CONSTRAINT [PK_Preference_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Preference_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([Id])
)
