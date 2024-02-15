CREATE OR ALTER TRIGGER CheckStudentDeleted
    ON StudentSessions
    FOR INSERT
    AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (
        SELECT 1
        FROM inserted i
                 JOIN Students s ON i.student_id = s.id
        WHERE s.deleted = 1
    )
        BEGIN
            RAISERROR ('Cannot insert because student is marked as deleted.', 16, 1);
        END;
END;
