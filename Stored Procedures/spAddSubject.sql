CREATE OR ALTER PROCEDURE spAddSubject
(
    @name nvarchar(255),
    @levelID INT,
    @material_link nvarchar(255)
)
AS
BEGIN
    INSERT INTO Levels (name, level_id, material_link)
        VALUES (@name, @levelID, @material_link)
END