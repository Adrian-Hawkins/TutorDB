CREATE TABLE [dbo].[Students] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [name]       NVARCHAR (255) NOT NULL,
    [surname]    NVARCHAR (255) NOT NULL,
    [deleted]    BIT            DEFAULT ((0)) NULL,
    [created_on] ROWVERSION     NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE   TRIGGER StudentDeletion
ON [dbo].[Students]
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [Students]
    SET [deleted] = 1
    WHERE [id] IN (SELECT [id] FROM deleted)
END;