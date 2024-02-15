CREATE OR ALTER TRIGGER CheckTutorDeletedSubject
    ON TutorSubjects
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
            RAISERROR ('Cannot insert new TutorSubject because tutor is marked as deleted.', 16, 1);
        END;
END;

CREATE OR ALTER TRIGGER CheckTutorDeletedSession
    ON Sessions
    FOR INSERT
    AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (
        SELECT 1
        FROM inserted i
                 JOIN TutorSubjects ts ON i.tutor_subject_id = ts.id
                 JOIN Tutors t ON ts.tutor_id = t.id
        WHERE t.deleted = 1
    )
        BEGIN
            RAISERROR ('Cannot insert new Session because tutor is marked as deleted.', 16, 1);
        END;
END;
