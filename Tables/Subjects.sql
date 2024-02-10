CREATE TABLE [Subjects] (
    [id] integer PRIMARY KEY,
    [name] nvarchar(255) NOT NULL,
    [level_id] integer,
    [material_link] nvarchar(255),
    [created_on] timestamp
    )
GO;
