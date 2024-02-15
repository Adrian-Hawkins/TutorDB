CREATE TABLE [dbo].[Levels] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [title]       NVARCHAR (255) NOT NULL,
    [description] NVARCHAR (255) NOT NULL,
    [created_on]  ROWVERSION     NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

