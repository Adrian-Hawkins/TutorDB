CREATE FUNCTION dbo.GetTutorOutstandingEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @AmountOwed DEC(10,2)
	
	SELECT @AmountOwed=SUM(price) FROM Sessions, StudentSessions, TutorSubjects WHERE TutorSubjects.tutor_id=@tutorID AND TutorSubjects.id = Sessions.tutor_subject_id AND Sessions.id = StudentSessions.session_id AND paid=0
	
	RETURN @AmountOwed
END;