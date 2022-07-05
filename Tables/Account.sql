﻿CREATE TABLE [dbo].[Account]
(
	[Id] NVARCHAR(65) UNIQUE NOT NULL DEFAULT (NEWID()),
	[UniqueIdentifier] NVARCHAR(40) NOT NULL,
	[EmailAddress] NVARCHAR(100) NOT NULL,
	[EmailAddressToken] NVARCHAR(30) DEFAULT NULL,
	[EmailAddressTokenTimestamp] DATETIME2(7) DEFAULT NULL,
	[EmailConfirmed] BIT NOT NULL DEFAULT 0,
	[Username] NVARCHAR(50) NOT NULL,
	[NormalizedUsername] NVARCHAR(50) NOT NULL,
	[PasswordSalt] NVARCHAR(30) NOT NULL,
	[HashPassword] NVARCHAR(100) NOT NULL,
	[TwoFactorEnabled] BIT NOT NULL DEFAULT 0,
	[TwoFaSecretKey] NVARCHAR(20) DEFAULT NULL,
	[RecoveryToken] NVARCHAR(50) DEFAULT NULL,
	[RecoveryTokenTimestamp] DATETIME2(7) DEFAULT NULL,
	[LoginFailedCount] TINYINT NOT NULL DEFAULT 0,
	[LockOutCount] TINYINT NOT NULL DEFAULT 0,
	[LockOutEnabled] BIT NOT NULL DEFAULT 0,
	[LockOutOn] DATETIME2(7) DEFAULT NULL,
	[IsSuspended] BIT NOT NULL DEFAULT 0,
	[CreatedOn] DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	CONSTRAINT [PK_Account_Id] PRIMARY KEY ([Id] ASC),
)