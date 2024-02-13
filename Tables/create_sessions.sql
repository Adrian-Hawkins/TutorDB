CREATE TABLE [Sessions] (
  [id] integer PRIMARY KEY NOT NULL,
  [tutor_subject_id] integer NOT NULL,
  [start] datetime NOT NULL,
  [duration_minutes] integer NOT NULL,
  [price] decimal(10,2) NOT NULL,
  [link] nvarchar(255) NOT NULL,
  [capacity] integer NOT NULL,
  [created_on] timestamp default (CURRENT_TIMESTAMP)
);
GO
