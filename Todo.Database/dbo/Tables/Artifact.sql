CREATE TABLE [dbo].[Artifact] (
    [Id]                 NVARCHAR (50)      NOT NULL,
    [Filename]           NVARCHAR (200)     NOT NULL,
    [RelatedDocumentIds] NVARCHAR (MAX)     NOT NULL,
    [Created]            DATETIMEOFFSET (7) NOT NULL,
    [ProjectId]          NVARCHAR (50)      NULL,
    [EnvironmentId]      NVARCHAR (50)      NULL,
    [JSON]               NVARCHAR (MAX)     NOT NULL,
    [TenantId]           NVARCHAR (50)      NULL,
    CONSTRAINT [PK_Artifact_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Artifact_TenantId]
    ON [dbo].[Artifact]([TenantId] ASC);

