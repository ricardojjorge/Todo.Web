CREATE TABLE [dbo].[DeploymentProcess] (
    [Id]                 NVARCHAR (150) NOT NULL,
    [OwnerId]            NVARCHAR (150) NOT NULL,
    [IsFrozen]           BIT            NOT NULL,
    [Version]            INT            NOT NULL,
    [JSON]               NVARCHAR (MAX) NOT NULL,
    [RelatedDocumentIds] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_DeploymentProcess_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

