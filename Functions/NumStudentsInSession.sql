CREATE FUNCTION dbo.GetNumStudentsInSession(
	@sessionID INT
)
RETURNS INT
AS
BEGIN
	DECLARE @Total INT

	SELECT @Total=COUNT(*) FROM StudentSessions WHERE session_id=@sessionID

	RETURN @Total
END;
