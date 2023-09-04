--IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'LocalityDivision')
--BEGIN TRUNCATE TABLE [dbo].[LocalityDivision]; END

--IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Locality')
--BEGIN TRUNCATE TABLE [dbo].[Locality]; END

--IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Currency')
--BEGIN TRUNCATE TABLE [dbo].[LocalityDivision]; END

--IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Role')
--BEGIN TRUNCATE TABLE [dbo].[Role]; END

--IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Challenge')
--BEGIN TRUNCATE TABLE [dbo].[Challenge]; END


------------------------------------------------------------------------
-- Currencies ----------------------------------------------------------

INSERT INTO [dbo].[Currency] (
	[Id],
	[Name],
	[Code],
	[Symbol]
) VALUES (
	'36c00e7676a54bb6889b82b0fca9d660',
	N'Việt Nam Đồng',
	'VND',
	N'Đ'
);

INSERT INTO [dbo].[Currency] (
	[Id],
	[Name],
	[Code],
	[Symbol]
) VALUES (
	'ee071153b13a45c6b0778213f03326f7',
	'Australian Dollar',
	'AUD',
	'$'
);

INSERT INTO [dbo].[Currency] (
	[Id],
	[Name],
	[Code],
	[Symbol]
) VALUES (
	'44defa6d267442278629bbc86df6de44',
	'United States Dollar',
	'USD',
	'$'
);



------------------------------------------------------------------------
-- Localities ----------------------------------------------------------

INSERT INTO [dbo].[Locality] (
	[Id],
	[Name],
	[Region],
	[IsoCode2Char],
	[IsoCode3Char],
	[TelephoneCode],
	[PrimaryCurrencyId],
	[SecondaryCurrencyId]
) VALUES ('6908ebdae028434fa7b296dd815a3ccb', 'Australia', 4, 'AU', 'AUS', '61', 'ee071153b13a45c6b0778213f03326f7', '44defa6d267442278629bbc86df6de44');

INSERT INTO [dbo].[Locality] (
	[Id],
	[Name],
	[Region],
	[IsoCode2Char],
	[IsoCode3Char],
	[TelephoneCode],
	[PrimaryCurrencyId],
	[SecondaryCurrencyId]
) VALUES ('a6a8bba96f2740f4911dd2ea2097ba2f', N'Việt Nam', 0, 'VN', 'VNM', '84', '36c00e7676a54bb6889b82b0fca9d660', '44defa6d267442278629bbc86df6de44');



------------------------------------------------------------------------
-- Locality Divisions --------------------------------------------------

-- Australia States
INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'Victoria',
	0,
	'VIC'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'New South Wales',
	0,
	'NSW'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'Queensland',
	0,
	'QLD'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'South Australia',
	0,
	'SA'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'Western Australia',
	0,
	'WA'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'Northern Territory',
	0,
	'NT'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'6908ebdae028434fa7b296dd815a3ccb',
	'Tasmania',
	0,
	'TAS'
);

-- Vietnam Provinces
INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'a6a8bba96f2740f4911dd2ea2097ba2f',
	N'TP. Sài Gòn',
	0,
	'SG'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'a6a8bba96f2740f4911dd2ea2097ba2f',
	N'Đà Nẵng',
	0,
	N'ĐNG'
);

INSERT INTO [dbo].[LocalityDivision] (
	[LocalityId],
	[Name],
	[DivisionType],
	[Abbreviation]
) VALUES (
	'a6a8bba96f2740f4911dd2ea2097ba2f',
	N'Tây Ninh',
	0,
	'TNH'
);



------------------------------------------------------------------------
-- Roles ---------------------------------------------------------------

INSERT INTO [dbo].[Role] (
	[Name],
	[IsForStaff],
	[Description]
) VALUES (
	'Customer',
	0,
	'Accounts registering on the platform may get Customer role. This role has the least accessibility to resouces.'
);

INSERT INTO [dbo].[Role] (
	[Name],
	[IsForStaff],
	[Description]
) VALUES (
	'Supplier',
	0,
	'Account registering on the platform may get Supplier role. This role is for those who supply products to the stores.'
);

INSERT INTO [dbo].[Role] (
	[Name],
	[IsForStaff],
	[Description]
) VALUES (
	'Support',
	1,
	'Accounts created by Administrators or Moderators may be assigned support role. This role inherits accessibility from customer role and has its own accessibility.'
);

INSERT INTO [dbo].[Role] (
	[Name],
	[IsForStaff],
	[Description]
) VALUES (
	'Moderator',
	1,
	'Accounts created by Administrators may be assigned moderator role. This role inherits accessibility from support role and has its own accessibility.'
);

INSERT INTO [dbo].[Role] (
	[Name],
	[IsForStaff],
	[Description]
) VALUES (
	'Administrator',
	1,
	'Accounts with administrator role can only be pre-inserted into database. This role has the most accessibility to resouces.'
);
