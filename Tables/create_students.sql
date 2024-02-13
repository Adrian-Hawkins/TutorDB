CREATE TABLE [Students] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [name] nvarchar(255) NOT NULL,
  [surname] nvarchar(255) NOT NULL,
  [created_on] timestamp
);
GO
