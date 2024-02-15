CREATE TABLE [dbo].[Subjects] (
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    [name]          NVARCHAR (255) NOT NULL,
    [level_id]      INT            NOT NULL,
    [material_link] NVARCHAR (255) NOT NULL,
    [created_on]    ROWVERSION     NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([level_id]) REFERENCES [dbo].[Levels] ([id])
);

