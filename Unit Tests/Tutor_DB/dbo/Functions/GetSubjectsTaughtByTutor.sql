CREATE   FUNCTION dbo.GetSubjectsTaughtByTutor
(
    @tutorId INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT t.name, t.surname, s.name AS subject, l.title, s.material_link
	FROM Levels l
    INNER JOIN Subjects s ON s.level_id = l.id
    INNER JOIN TutorSubjects ts ON ts.subject_id = s.id
	INNER JOIN Tutors t ON ts.tutor_id = t.id
    WHERE ts.tutor_id = @tutorId
);