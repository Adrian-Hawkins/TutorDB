CREATE OR ALTER PROCEDURE spAddLevel
(
    @title nvarchar(255),
    @description nvarchar(255)
)
AS
BEGIN
    INSERT INTO Levels (title, description)
        VALUES (@title, @description)
END