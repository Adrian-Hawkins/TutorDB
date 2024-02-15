CREATE FUNCTION dbo.GetTutorTotalReceivedEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @AmountRec DEC(10,2)
	
	SELECT @AmountRec=SUM(price) FROM Sessions, StudentSessions, TutorSubjects WHERE TutorSubjects.tutor_id=@tutorID AND TutorSubjects.id = Sessions.tutor_subject_id AND Sessions.id = StudentSessions.session_id AND paid=1
	
	RETURN @AmountRec
END;