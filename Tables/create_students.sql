CREATE TABLE [Students] (
  [id] integer PRIMARY KEY NOT NULL,
  [name] nvarchar(255) NOT NULL,
  [surname] nvarchar(255) NOT NULL,
  [created_on] timestamp default (CURRENT_TIMESTAMP)
);
GO
