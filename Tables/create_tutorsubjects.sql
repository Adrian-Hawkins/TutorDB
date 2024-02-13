CREATE TABLE [TutorSubjects] (
  [id] integer PRIMARY KEY NOT NULL,
  [tutor_id] integer NOT NULL,
  [subject_id] integer NOT NULL,
  [created_on] timestamp default (CURRENT_TIMESTAMP)
);
GO
