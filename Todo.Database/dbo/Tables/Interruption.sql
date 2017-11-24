CREATE TABLE [dbo].[Interruption] (
    [Id]                 NVARCHAR (50)      NOT NULL,
    [Created]            DATETIMEOFFSET (7) NOT NULL,
    [Title]              NVARCHAR (200)     NOT NULL,
    [Status]             NVARCHAR (50)      NOT NULL,
    [RelatedDocumentIds] NVARCHAR (MAX)     NOT NULL,
    [ResponsibleTeamIds] NVARCHAR (MAX)     NOT NULL,
    [ProjectId]          NVARCHAR (50)      NOT NULL,
    [EnvironmentId]      NVARCHAR (50)      NOT NULL,
    [TaskId]             NVARCHAR (50)      NOT NULL,
    [JSON]               NVARCHAR (MAX)     NOT NULL,
    [TenantId]           NVARCHAR (50)      NULL,
    CONSTRAINT [PK_Interruption_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Interruption_TenantId]
    ON [dbo].[Interruption]([TenantId] ASC);

