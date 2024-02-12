CREATE OR ALTER FUNCTION dbo.GetSubjectsTaughtByTutor
(
    @tutorId INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT s.id, s.name, s.level_id, s.material_link
    FROM TutorSubjects ts
    INNER JOIN Subjects s ON ts.subject_id = s.id
    WHERE ts.tutor_id = @tutorId
);
