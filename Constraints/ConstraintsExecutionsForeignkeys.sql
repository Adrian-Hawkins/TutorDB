ALTER TABLE [TutorSubjects] ADD FOREIGN KEY ([tutor_id]) REFERENCES [Tutors] ([id])
GO

ALTER TABLE [TutorSubjects] ADD FOREIGN KEY ([subject_id]) REFERENCES [Subjects] ([id])
GO

ALTER TABLE [Subjects] ADD FOREIGN KEY ([level_id]) REFERENCES [Level] ([id])
GO

ALTER TABLE [Sessions] ADD FOREIGN KEY ([tutor_subject_id]) REFERENCES [TutorSubjects] ([id])
GO

ALTER TABLE [StudentSessions] ADD FOREIGN KEY ([session_id]) REFERENCES [Sessions] ([id])
GO

ALTER TABLE [StudentSessions] ADD FOREIGN KEY ([student_id]) REFERENCES [Students] ([id])
GO
