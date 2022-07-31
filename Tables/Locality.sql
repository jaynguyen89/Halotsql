-- Locality: includes Countries and Territories

CREATE TABLE [dbo].[Locality]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[Name] NVARCHAR(80) NOT NULL,
	[Region] TINYINT NOT NULL DEFAULT 0,
	[Code] NVARCHAR(5) NOT NULL,
	[TelephoneCode] NVARCHAR(5) NOT NULL,
	[PrimaryCurrencyId] NVARCHAR(65) NOT NULL,
	[SecondaryCurrencyId] NVARCHAR(65) DEFAULT NULL,
	CONSTRAINT [PK_Locality_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Locality_Currency_PrimaryCurrencyId] FOREIGN KEY ([PrimaryCurrencyId]) REFERENCES [dbo].[Currency] ([Id]),
	CONSTRAINT [FK_Locality_Currency_SecondaryCurrencyId] FOREIGN KEY ([SecondaryCurrencyId]) REFERENCES [dbo].[Currency] ([Id])
)
