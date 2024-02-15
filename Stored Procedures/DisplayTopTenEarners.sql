CREATE PROCEDURE spDisplayTopTenEarners
AS
SELECT TOP 10 t.name, t.surname, dbo.GetTutorTotalEarnings(t.id) AS earnings FROM Tutors t ORDER BY earnings DESC;