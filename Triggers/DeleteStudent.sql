CREATE OR ALTER TRIGGER StudentDeletion
ON [dbo].[Students]
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [Students]
    SET [deleted] = 1
    WHERE [id] IN (SELECT [id] FROM deleted)
END;