CREATE FUNCTION dbo.tutorOutstandingEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @AmountOwed DEC(10,2)
	
	SELECT @AmountOwed=SUM(price) FROM Sessions, StudentSessions, Tutors WHERE Tutors.id=@tutorID AND Sessions.id = StudentSessions.session_id AND paid=0
	
	RETURN @AmountOwed
END;