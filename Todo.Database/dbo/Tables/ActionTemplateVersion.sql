CREATE TABLE [dbo].[ActionTemplateVersion] (
    [Id]                     NVARCHAR (50)  NOT NULL,
    [Name]                   NVARCHAR (200) NOT NULL,
    [Version]                INT            NOT NULL,
    [LatestActionTemplateId] NVARCHAR (50)  NOT NULL,
    [ActionType]             NVARCHAR (50)  NOT NULL,
    [JSON]                   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ActionTemplateVersion_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ActionTemplateVersionUniqueNameVersion] UNIQUE NONCLUSTERED ([Name] ASC, [Version] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ActionTemplateVersion_LatestActionTemplateId]
    ON [dbo].[ActionTemplateVersion]([LatestActionTemplateId] ASC);

