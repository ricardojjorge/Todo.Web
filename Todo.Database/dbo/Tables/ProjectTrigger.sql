CREATE TABLE [dbo].[ProjectTrigger] (
    [Id]        NVARCHAR (50)  NOT NULL,
    [Name]      NVARCHAR (200) NOT NULL,
    [ProjectId] NVARCHAR (50)  NOT NULL,
    [Type]      NVARCHAR (50)  NULL,
    [JSON]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ProjectTrigger_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ProjectTriggerNameUnique] UNIQUE NONCLUSTERED ([ProjectId] ASC, [Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ProjectTrigger_Project]
    ON [dbo].[ProjectTrigger]([ProjectId] ASC);

