CREATE TABLE [Subjects] (
    [id] integer PRIMARY KEY NOT NULL,
    [name] nvarchar(255) NOT NULL,
    [level_id] integer NOT NULL,
    [material_link] nvarchar(255) NOT NULL,
    [created_on] timestamp default (CURRENT_TIMESTAMP)
);
GO
