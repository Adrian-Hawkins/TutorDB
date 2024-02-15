CREATE TABLE [dbo].[Sessions] (
    [id]               INT             IDENTITY (1, 1) NOT NULL,
    [tutor_subject_id] INT             NOT NULL,
    [start]            DATETIME        NOT NULL,
    [duration_minutes] INT             NOT NULL,
    [price]            DECIMAL (10, 2) NOT NULL,
    [link]             NVARCHAR (255)  NOT NULL,
    [capacity]         INT             NOT NULL,
    [created_on]       ROWVERSION      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [CHK_Capacity_GreaterThan_Zero] CHECK ([capacity]>(0)),
    CONSTRAINT [CHK_Duration_GreaterThan_Zero] CHECK ([duration_minutes]>(0)),
    CONSTRAINT [CHK_Price_Above_Zero] CHECK ([price]>(0)),
    FOREIGN KEY ([tutor_subject_id]) REFERENCES [dbo].[TutorSubjects] ([id])
);

