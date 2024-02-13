CREATE TABLE [StudentSessions] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [session_id] integer NOT NULL,
  [student_id] integer NOT NULL,
  [paid] bit DEFAULT (0),
  [created_on] timestamp,
);
GO
