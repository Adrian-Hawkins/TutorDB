CREATE OR ALTER PROCEDURE spUpdateStudentDeletedStatus
(
	@studentID INT,
	@deleted bit
)
AS
BEGIN
	UPDATE Students
	SET deleted = @deleted 
	WHERE id = @studentID
END