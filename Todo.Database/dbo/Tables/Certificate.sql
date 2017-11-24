CREATE TABLE [dbo].[Certificate] (
    [Id]             VARCHAR (210)      NOT NULL,
    [Name]           NVARCHAR (200)     NOT NULL,
    [Thumbprint]     NVARCHAR (128)     NOT NULL,
    [NotAfter]       DATETIMEOFFSET (0) NOT NULL,
    [Subject]        NVARCHAR (MAX)     NOT NULL,
    [EnvironmentIds] NVARCHAR (MAX)     NULL,
    [TenantIds]      NVARCHAR (MAX)     NULL,
    [TenantTags]     NVARCHAR (MAX)     NULL,
    [Archived]       DATETIMEOFFSET (0) NULL,
    [Created]        DATETIMEOFFSET (0) NOT NULL,
    [JSON]           NVARCHAR (MAX)     NOT NULL,
    CONSTRAINT [PK_Certificate_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Certificate_Created]
    ON [dbo].[Certificate]([Created] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Certificate_NotAfter]
    ON [dbo].[Certificate]([NotAfter] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Certificate_Thumbprint]
    ON [dbo].[Certificate]([Thumbprint] ASC);

