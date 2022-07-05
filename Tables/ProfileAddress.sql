CREATE TABLE [dbo].[ProfileAddress]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[ProfileId] NVARCHAR(65) NOT NULL,
	[AddressId] NVARCHAR(65) NOT NULL,
	[Label] NVARCHAR(50) DEFAULT NULL,
	[IsPostal] BIT NOT NULL DEFAULT 0,
	[IsResidential] BIT NOT NULL DEFAULT 0,
	[IsForReturn] BIT NOT NULL DEFAULT 0,
	[CreatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	CONSTRAINT [PK_ProfileAddress_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_ProfileAddress_Profile_ProfileId] FOREIGN KEY ([ProfileId]) REFERENCES [dbo].[Profile] ([Id]),
	CONSTRAINT [FK_ProfileAddress_Address_AddressId] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id])
)
