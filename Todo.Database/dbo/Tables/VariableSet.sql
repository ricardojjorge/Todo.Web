CREATE TABLE [dbo].[VariableSet] (
    [Id]                 NVARCHAR (150) NOT NULL,
    [OwnerId]            NVARCHAR (150) NOT NULL,
    [Version]            INT            NOT NULL,
    [IsFrozen]           BIT            NOT NULL,
    [JSON]               NVARCHAR (MAX) NOT NULL,
    [RelatedDocumentIds] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_VariableSet_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

