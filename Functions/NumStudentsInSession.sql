CREATE FUNCTION dbo.GetNumStudentsInSession(
	@studentSessionID INT
)
RETURNS INT
AS
BEGIN
	DECLARE @Total INT
	
	SELECT @Total=COUNT(id) FROM StudentSessions WHERE id=@studentSessionID
	
	RETURN @Total
END;