SELECT * FROM dbo.TotalEarningsByTutor;
SELECT dbo.GetTotalAmountOwed(6) AS TotalAmountOwed;
SELECT * FROM dbo.GetStudentSubjects(1);
EXEC spDisplayTopTenEarners;