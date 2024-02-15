CREATE FUNCTION dbo.GetStudentsInSession
(
    @sessionID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT s.name, s.surname FROM Students s INNER JOIN StudentSessions ss ON s.id = ss.student_id WHERE ss.session_id = @sessionID
);