CREATE TABLE [dbo].[TenantVariable] (
    [Id]                 NVARCHAR (50)  NOT NULL,
    [TenantId]           NVARCHAR (50)  NOT NULL,
    [EnvironmentId]      NVARCHAR (50)  NULL,
    [OwnerId]            NVARCHAR (50)  NOT NULL,
    [VariableTemplateId] NVARCHAR (50)  NOT NULL,
    [JSON]               NVARCHAR (MAX) NOT NULL,
    [RelatedDocumentId]  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_TenantVariable_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_TenantVariable] UNIQUE NONCLUSTERED ([TenantId] ASC, [OwnerId] ASC, [EnvironmentId] ASC, [VariableTemplateId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_TenantVariable_TenantId]
    ON [dbo].[TenantVariable]([TenantId] ASC);

