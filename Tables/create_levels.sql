CREATE TABLE [Level] (
  [id] integer PRIMARY KEY NOT NULL,
  [title] nvarchar(255) NOT NULL,
  [description] nvarchar(255) NOT NULL,
  [created_on] timestamp default (CURRENT_TIMESTAMP)
);
GO
