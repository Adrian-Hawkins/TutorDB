CREATE FUNCTION dbo.GetStudentSubjects
(
    @sessionID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT DISTINCT sub.name, l.title FROM Students s INNER JOIN StudentSessions ss ON s.id = ss.student_id INNER JOIN Sessions ses ON ss.session_id = ses.id INNER JOIN TutorSubjects ts ON ses.tutor_subject_id = ts.id INNER JOIN Subjects sub ON ts.subject_id = sub.id INNER JOIN Levels l ON sub.level_id = l.id WHERE ses.id = @sessionID
);