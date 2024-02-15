CREATE OR ALTER PROCEDURE DeleteOldTutors
@archiveThreshold DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete tutor subjects for tutors who haven't created any sessions
    DELETE FROM TutorSubjects
    WHERE tutor_id IN (
        SELECT id
        FROM Tutors
        WHERE created_on < @archiveThreshold
          AND id NOT IN (
            SELECT ts.tutor_id
            FROM TutorSubjects ts
                     INNER JOIN Sessions s ON ts.id = s.tutor_subject_id
        )
    );

    -- Delete tutors who haven't created any sessions
    DELETE FROM Tutors
    WHERE created_on < @archiveThreshold
      AND id NOT IN (
        SELECT ts.tutor_id
        FROM TutorSubjects ts
                 INNER JOIN Sessions s ON ts.id = s.tutor_subject_id
    );
END;
