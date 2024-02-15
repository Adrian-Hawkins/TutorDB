CREATE TABLE [Subjects] (
    [id] integer PRIMARY KEY IDENTITY (1,1),
    [name] varchar(50) NOT NULL,
    [level_id] integer NOT NULL,
    [material_link] varchar(255) NOT NULL,
    [created_on] timestamp
);
GO
