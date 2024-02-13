CREATE TABLE [StudentSessions] (
  [id] integer PRIMARY KEY NOT NULL,
  [session_id] integer NOT NULL,
  [student_id] integer NOT NULL,
  [paid] bit DEFAULT (0),
  [created_on] timestamp default (CURRENT_TIMESTAMP),
);
GO
