CREATE OR ALTER TRIGGER StudentDeletion
ON [Students]
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM [StudentSessions]
    WHERE [student_id] IN (SELECT [id] FROM deleted);
    DELETE FROM [Sessions]
    WHERE [id] IN (SELECT [session_id] FROM deleted);
END;
