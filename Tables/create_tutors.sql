CREATE TABLE [Tutors] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [name] varchar(50) NOT NULL,
  [surname] varchar(50) NOT NULL,
  [deleted] bit default (0),
  [email] varchar(100) NOT NULL,
  [created_on] timestamp,
  CONSTRAINT UC_Tutors_Email UNIQUE (email)
);
GO