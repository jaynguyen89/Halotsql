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