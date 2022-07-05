CREATE TABLE [dbo].[Address]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[BuildingName] NVARCHAR(50) DEFAULT NULL,
	[PoBoxNumber] NVARCHAR(100) DEFAULT NULL,
	[StreetAddress] NVARCHAR(100) DEFAULT NULL,
	[Group] NVARCHAR(100) DEFAULT NULL, --To
	[Lane] NVARCHAR(100) DEFAULT NULL, --Ngo, ngach
	[Quarter] NVARCHAR(100) DEFAULT NULL, --Khu pho
	[Hamlet] NVARCHAR(100) DEFAULT NULL, --Ap
	[Commute] NVARCHAR(100) DEFAULT NULL, --Xa
	[Ward] NVARCHAR(100) DEFAULT NULL, --Phuong
	[District] NVARCHAR(100) DEFAULT NULL, --Quan
	[Town] NVARCHAR(100) DEFAULT NULL, --Thi xa
	[Suburb] NVARCHAR(100) DEFAULT NULL,
	[Postcode] NVARCHAR(20) DEFAULT NULL,
	[City] NVARCHAR(100) DEFAULT NULL,
	[DivisionId] NVARCHAR(65) DEFAULT NULL, --Province/State/Territory
	[CountryId] NVARCHAR(65) DEFAULT NULL,
    [Variant] TINYINT NOT NULL DEFAULT 0,
	CONSTRAINT [PK_Address_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Address_Locality_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Locality] ([Id]),
    CONSTRAINT [FK_Address_LocalityDivision_DivisionId] FOREIGN KEY ([DivisionId]) REFERENCES [dbo].[LocalityDivision] ([Id])
)
