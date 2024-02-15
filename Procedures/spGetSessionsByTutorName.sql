CREATE OR ALTER PROCEDURE spGetSessionsByTutorName
(
    @name nvarchar(255)
)
AS
BEGIN
    SELECT s.name, s.surname, s.email , ses.start, ses.capacity
    FROM Students s
    JOIN StudentSessions ss ON s.id = ss.student_id
    JOIN Sessions ses ON ss.session_id = ses.id
    JOIN TutorSubjects ts ON ses.tutor_subject_id = ts.id
    JOIN Tutors t ON ts.tutor_id = t.id 
    WHERE t.name = @name
END