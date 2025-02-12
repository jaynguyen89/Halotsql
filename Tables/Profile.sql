﻿CREATE TABLE [dbo].[Profile]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[AccountId] NVARCHAR(65) NOT NULL,
	[PhoneNumber] NVARCHAR(50) DEFAULT NULL,
    [PhoneNumberToken] NVARCHAR(10) DEFAULT NULL,
	[PhoneNumberTokenTimestamp] DATETIME2(7) DEFAULT NULL,
	[PhoneNumberConfirmed] BIT NOT NULL DEFAULT 0,
	[GivenName] NVARCHAR(100) DEFAULT NULL,
	[MiddleName] NVARCHAR(100) DEFAULT NULL,
	[LastName] NVARCHAR(100) DEFAULT NULL,
	[FullName] NVARCHAR(200) DEFAULT NULL,
	[NickName] NVARCHAR(50) DEFAULT NULL,
	[AvatarName] NVARCHAR(150) DEFAULT NULL,
	[CoverName] NVARCHAR(150) DEFAULT NULL,
	[DateOfBirth] DATETIME2(7) DEFAULT NULL,
	[Gender] TINYINT NOT NULL DEFAULT 0,
	[Ethnicity] TINYINT NOT NULL DEFAULT 0,
	[Company] NVARCHAR(100) DEFAULT NULL,
	[JobTitle] NVARCHAR(100) DEFAULT NULL,
	[OccupationId] NVARCHAR(65) DEFAULT NULL,
	[Websites] NVARCHAR(2000) DEFAULT NULL, -- JSON array: [{url, label, privacy}]
	[Interests] NVARCHAR(1500) DEFAULT NULL, -- JSON array: [string]
	CONSTRAINT [PK_Profile_Id] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_Profile_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([Id]),
	CONSTRAINT [FK_Profile_Occupation_OccupationId] FOREIGN KEY ([OccupationId]) REFERENCES [dbo].[Occupation] ([Id])
)
