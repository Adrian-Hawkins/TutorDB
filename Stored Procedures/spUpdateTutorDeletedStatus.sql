CREATE OR ALTER PROCEDURE spUpdateTutorDeletedStatus
(
    @tutorID INT,
	@deleted bit
)
AS
BEGIN
    UPDATE Tutors
    SET deleted = @deleted 
    WHERE id = @tutorID
END