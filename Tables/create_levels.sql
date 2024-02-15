CREATE TABLE [Levels] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [title] varchar(50) NOT NULL,
  [description] varchar(255) NOT NULL,
  [created_on] timestamp
);
GO
