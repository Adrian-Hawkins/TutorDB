CREATE TABLE [StudentSessions] (
  [id] int PRIMARY KEY NOT NULL,
  [session_id] int,
  [student_id] int,
  [paid] bool DEFAULT (false),
  [created_on] timestamp,
);

ALTER TABLE [StudentSessions] ADD FOREIGN KEY ([session_id]) REFERENCES [Sessions]([id]);

ALTER TABLE [StudentSessions] ADD FOREIGN KEY ([student_id]) REFERENCES [Students]([id]);