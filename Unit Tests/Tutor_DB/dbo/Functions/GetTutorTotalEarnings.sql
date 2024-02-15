CREATE FUNCTION dbo.GetTutorTotalEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @Total DEC(10,2)
	
	SELECT @Total=SUM(price) FROM Sessions, StudentSessions, TutorSubjects WHERE TutorSubjects.tutor_id=@tutorID AND TutorSubjects.id = Sessions.tutor_subject_id AND Sessions.id = StudentSessions.session_id
	
	RETURN @Total
END;