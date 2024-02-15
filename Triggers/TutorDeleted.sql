CREATE OR ALTER TRIGGER CheckTutorDeleted
    ON TutorSubjects, Sessions
    FOR INSERT
    AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (
        SELECT 1
        FROM inserted i
                 JOIN Tutors t ON i.tutor_id = t.id
        WHERE t.deleted = 1
    )
        BEGIN
            RAISERROR ('Cannot insert because tutor is marked as deleted.', 16, 1);
        END;
END;
