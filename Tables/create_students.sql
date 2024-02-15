CREATE TABLE [Students] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [name] varchar(50) NOT NULL,
  [surname] varchar(50) NOT NULL,
  [deleted] bit default (0),
  [email] varchar(100) NOT NULL,
  [created_on] timestamp
);
GO
