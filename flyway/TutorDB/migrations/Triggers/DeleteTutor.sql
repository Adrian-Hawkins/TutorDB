CREATE OR ALTER TRIGGER TutorDeletion
ON [dbo].[Tutors]
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [Tutors]
    SET [deleted] = 1
    WHERE [id] IN (SELECT [id] FROM deleted)
END;