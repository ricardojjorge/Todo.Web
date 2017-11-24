CREATE TABLE [dbo].[CommunityActionTemplate] (
    [Id]         NVARCHAR (50)    NOT NULL,
    [Name]       NVARCHAR (200)   NOT NULL,
    [ExternalId] UNIQUEIDENTIFIER NOT NULL,
    [JSON]       NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_CommunityActionTemplate_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_CommunityActionTemplateExternalId] UNIQUE NONCLUSTERED ([ExternalId] ASC),
    CONSTRAINT [UQ_CommunityActionTemplateName] UNIQUE NONCLUSTERED ([Name] ASC)
);

