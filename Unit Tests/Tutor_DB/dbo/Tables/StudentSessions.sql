CREATE TABLE [dbo].[StudentSessions] (
    [id]         INT        IDENTITY (1, 1) NOT NULL,
    [session_id] INT        NOT NULL,
    [student_id] INT        NOT NULL,
    [paid]       BIT        DEFAULT ((0)) NULL,
    [created_on] ROWVERSION NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([session_id]) REFERENCES [dbo].[Sessions] ([id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Students] ([id])
);

