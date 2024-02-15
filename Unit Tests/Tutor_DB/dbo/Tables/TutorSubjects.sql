CREATE TABLE [dbo].[TutorSubjects] (
    [id]         INT        IDENTITY (1, 1) NOT NULL,
    [tutor_id]   INT        NOT NULL,
    [subject_id] INT        NOT NULL,
    [created_on] ROWVERSION NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([subject_id]) REFERENCES [dbo].[Subjects] ([id]),
    FOREIGN KEY ([tutor_id]) REFERENCES [dbo].[Tutors] ([id])
);

