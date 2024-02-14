CREATE TABLE [Levels] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [title] nvarchar(255) NOT NULL,
  [description] nvarchar(255) NOT NULL,
  [testfield] nvarchar(255),
  [created_on] timestamp
);
GO
