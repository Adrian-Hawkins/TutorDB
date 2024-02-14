CREATE TABLE [Level] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [title] nvarchar(255) NOT NULL,
  [description] nvarchar(255) NOT NULL,
  [testfield] nvarchar(255) NOT NULL,
  [created_on] timestamp
);
GO