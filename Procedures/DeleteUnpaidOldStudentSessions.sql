CREATE OR ALTER PROCEDURE DeleteUnpaidOldStudentSessions
@archiveThreshold DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete unpaid student sessions created before the archive threshold
    DELETE FROM StudentSessions
    WHERE created_on < @archiveThreshold
      AND paid = 0;
END;
