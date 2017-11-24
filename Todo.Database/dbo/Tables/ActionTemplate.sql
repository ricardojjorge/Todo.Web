CREATE TABLE [dbo].[ActionTemplate] (
    [Id]                        NVARCHAR (50)  NOT NULL,
    [Name]                      NVARCHAR (200) NOT NULL,
    [Version]                   INT            NOT NULL,
    [ActionType]                NVARCHAR (50)  NOT NULL,
    [JSON]                      NVARCHAR (MAX) NOT NULL,
    [CommunityActionTemplateId] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_ActionTemplate_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ActionTemplateUniqueName] UNIQUE NONCLUSTERED ([Name] ASC)
);

