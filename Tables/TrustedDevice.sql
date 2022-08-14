CREATE TABLE [dbo].[TrustedDevice]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[AccountId] NVARCHAR(65) NOT NULL,
	[DeviceName] NVARCHAR(50) DEFAULT NULL,
	[DeviceType] TINYINT DEFAULT NULL, -- Enum declared by API
	[UniqueIdentifier] NVARCHAR(50) DEFAULT NULL,
	[DeviceLocation] NVARCHAR(200) DEFAULT NULL, -- JSON: { locationName:string, latitude:number, longitude: number }
	[IpAddress] NVARCHAR(30) DEFAULT NULL,
	[OperatingSystem] NVARCHAR(50) DEFAULT NULL,
    [BrowserType] NVARCHAR(50) DEFAULT NULL,
	[AddedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	[IsTrusted] BIT NOT NULL DEFAULT 0,
	CONSTRAINT [PK_TrustedDevice_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_TrustedDevice_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([Id])
)
