CREATE TABLE [TutorSubjects] (
  [id] integer PRIMARY KEY IDENTITY (1,1),
  [tutor_id] integer NOT NULL,
  [subject_id] integer NOT NULL,
  [created_on] timestamp
);
GO
