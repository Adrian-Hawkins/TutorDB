CREATE   FUNCTION dbo.GetTotalAmountOwed(@studentId INTEGER)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @totalAmount DECIMAL(10, 2);
    SELECT @totalAmount = SUM(s.price)
    FROM StudentSessions ss
    INNER JOIN Sessions s ON ss.session_id = s.id
    WHERE ss.student_id = @studentId
    AND ss.paid = 0;
    RETURN ISNULL(@totalAmount, 0.00);
END;