CREATE TABLE [dbo].[Tutors] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [name]       NVARCHAR (255) NOT NULL,
    [surname]    NVARCHAR (255) NOT NULL,
    [deleted]    BIT            DEFAULT ((0)) NULL,
    [created_on] ROWVERSION     NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE   TRIGGER TutorDeletion
ON [dbo].[Tutors]
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [Tutors]
    SET [deleted] = 1
    WHERE [id] IN (SELECT [id] FROM deleted)
END;