CREATE PROCEDURE DeleteUnpaidOldStudentSessions
@archiveThreshold DATETIME = DATEADD(WEEK, -1, GETDATE())
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete unpaid student sessions created before the archive threshold
    DELETE FROM StudentSessions
    WHERE created_on < @archiveThreshold
      AND paid = 0;
END;
