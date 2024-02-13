CREATE TABLE [Sessions] (
  [id] integer PRIMARY KEY,
  [tutor_subject_id] integer,
  [start] datetime NOT NULL,
  [duration_minutes] integer NOT NULL,
  [price] double NOT NULL,
  [link] nvarchar(255) NOT NULL,
  [capacity] integer,
  [created_on] timestamp
)
GO