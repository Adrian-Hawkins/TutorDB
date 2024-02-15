CREATE OR ALTER TRIGGER PreventOverlappingSessions
    ON Sessions
    FOR INSERT, UPDATE
    AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
                 JOIN Sessions s ON i.tutor_subject_id = s.tutor_subject_id
                 JOIN TutorSubjects ts ON i.tutor_subject_id = ts.id
        WHERE i.id <> s.id -- Exclude the same session being updated
          AND i.start < DATEADD(MINUTE, s.duration_minutes, s.start)
          AND DATEADD(MINUTE, i.duration_minutes, i.start) > s.start
    )
        BEGIN
            RAISERROR ('Cannot create/update session. Overlaps with existing session.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END;
END;
