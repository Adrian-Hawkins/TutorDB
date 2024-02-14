CREATE FUNCTION dbo.GetTutorTotalEarnings(
	@tutorID INT
)
RETURNS DEC(10,2)
AS
BEGIN
	DECLARE @Total DEC(10,2)
	
	SELECT @Total=SUM(price) FROM Sessions, StudentSessions, Tutors WHERE Tutors.id=@tutorID AND Sessions.id = StudentSessions.session_id
	
	RETURN @Total
END;