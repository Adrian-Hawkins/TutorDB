CREATE TABLE [Sessions] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [tutor_subject_id] integer,
  [start] datetime NOT NULL,
  [duration_minutes] integer NOT NULL,
  [price] decimal(18,2) NOT NULL,
  [link] nvarchar(255) NOT NULL,
  [capacity] integer,
  [created_on] timestamp,
  CONSTRAINT CHK_Price_Above_Zero CHECK (price > 0)
)
GO