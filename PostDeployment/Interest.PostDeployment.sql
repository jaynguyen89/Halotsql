INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('e6459f2864f5439293c34473f5f20dce', NULL, 'Art Performance', NULL);

INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('b42710dfe0b14c2aafe848960a91166b', NULL, 'Computers & Electronics', NULL);

INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('01d667ae90844ac6aef0ee221ace91ce', NULL, 'Collecting & Preservation', NULL);

-- Art Performance
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('ff9bc4803af44ee4a7deb88eaff458e0', 'e6459f2864f5439293c34473f5f20dce', 'Dancing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('9f73342320e64869952ed30a448669dc', 'e6459f2864f5439293c34473f5f20dce', 'Singing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('08e2986c4c5746f2b2b49b18a5be463e', 'e6459f2864f5439293c34473f5f20dce', 'Drawing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('467f940690d84ca4a6f706514951d7d4', 'e6459f2864f5439293c34473f5f20dce', 'Music composing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('3ceb6233fb8443d48d61b0b1dcc89d4a', 'e6459f2864f5439293c34473f5f20dce', 'Painting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('1c43eba6b0284942ac693bd9c488fe6c', 'e6459f2864f5439293c34473f5f20dce', 'Embroidery', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('65faccf05f704a0a868bc75933221b02', 'e6459f2864f5439293c34473f5f20dce', 'Music playing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('499906c65fe341a89ea2132da98ab69c', 'e6459f2864f5439293c34473f5f20dce', 'Pottery', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('10e2ea10e6134339b8596b49eb1dbb85', 'e6459f2864f5439293c34473f5f20dce', 'Origami', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('c46a825a15ab4709a4fe71bc1ff85cc1', 'e6459f2864f5439293c34473f5f20dce', 'Digital arts', NULL);

-- Computers & Electronics
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('0345685c9f6443afbdaa3a25d9079c4f', 'b42710dfe0b14c2aafe848960a91166b', 'PC building', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('9441ff640530472587748a40573731c4', 'b42710dfe0b14c2aafe848960a91166b', 'PC modification', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('8fd849168af34e4fa17aaf45c8a48e03', 'b42710dfe0b14c2aafe848960a91166b', '3D printing', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('c7d44bc363104b19a8e7c00c6bf63b80', 'b42710dfe0b14c2aafe848960a91166b', 'Electronic gadgets', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('720f95e53bd24871a03c8bea70175eab', 'b42710dfe0b14c2aafe848960a91166b', 'Circuit board', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('7a0b65cbe2874127acad43a73ddeb178', 'b42710dfe0b14c2aafe848960a91166b', 'Pi design', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('cd25cfe879a24c26b81293f8cd30fd56', 'b42710dfe0b14c2aafe848960a91166b', 'PC troubleshooting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('59b8fb5d857e49e1af94a283b8ed3de4', 'b42710dfe0b14c2aafe848960a91166b', 'Car electronics', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('f3d68fe4d33c4f43b9025956b935c228', 'b42710dfe0b14c2aafe848960a91166b', 'Consumer electronics', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('5150bcd258664d8ba42f581e6cf00596', 'b42710dfe0b14c2aafe848960a91166b', 'Cold electronics', NULL);

-- Collecting & Preservation
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('592401afe3d047d69e8f0d47bd4f0517', '01d667ae90844ac6aef0ee221ace91ce', 'Stamp collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('c8bea489560046799c9bf88722112113', '01d667ae90844ac6aef0ee221ace91ce', 'Coin collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('b805eab1b7ba4edb81fd57b5a6fff7d5', '01d667ae90844ac6aef0ee221ace91ce', 'Insect collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('b8dae0dcf96a4e9bb0185e2af7a15eee', '01d667ae90844ac6aef0ee221ace91ce', 'Plant collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('942d349c30794c9e88682401f0f31d1c', '01d667ae90844ac6aef0ee221ace91ce', 'Fossil collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('b6187462276a4ea6939034648daad11a', '01d667ae90844ac6aef0ee221ace91ce', 'Gem collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('f9fd6461af484d57b446e4c0a6f63583', '01d667ae90844ac6aef0ee221ace91ce', 'Toy collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('a085ef6372114362b14bbc16da173abb', '01d667ae90844ac6aef0ee221ace91ce', 'Book collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('c93cbe4b879f4c4c8a8e61b5b015f2b3', '01d667ae90844ac6aef0ee221ace91ce', 'Antique collecting', NULL);
INSERT INTO [dbo].[Interest] (
	[Id],
	[ParentId],
	[Name],
	[Description]
) VALUES ('4a72b5e963f44f0dadf9e9e1554f1842', '01d667ae90844ac6aef0ee221ace91ce', 'Wine collecting', NULL);