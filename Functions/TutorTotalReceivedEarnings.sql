CREATE FUNCTION dbo.GetTutorTotalReceivedEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @AmountRec DEC(10,2)
	
	SELECT @AmountRec=SUM(price) FROM Sessions, StudentSessions, Tutors WHERE Tutors.id=@tutorID AND Sessions.id = StudentSessions.session_id AND paid=1
	
	RETURN @AmountRec
END;