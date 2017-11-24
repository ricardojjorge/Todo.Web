CREATE TABLE [dbo].[Project] (
    [Id]                            NVARCHAR (50)  NOT NULL,
    [Name]                          NVARCHAR (200) NOT NULL,
    [Slug]                          NVARCHAR (210) NOT NULL,
    [IsDisabled]                    BIT            NOT NULL,
    [VariableSetId]                 NVARCHAR (150) NULL,
    [DeploymentProcessId]           NVARCHAR (50)  NULL,
    [ProjectGroupId]                NVARCHAR (50)  NOT NULL,
    [LifecycleId]                   NVARCHAR (50)  NOT NULL,
    [AutoCreateRelease]             BIT            NOT NULL,
    [JSON]                          NVARCHAR (MAX) NOT NULL,
    [IncludedLibraryVariableSetIds] NVARCHAR (MAX) NULL,
    [DiscreteChannelRelease]        BIT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Project_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ProjectNameUnique] UNIQUE NONCLUSTERED ([Name] ASC),
    CONSTRAINT [UQ_ProjectSlugUnique] UNIQUE NONCLUSTERED ([Slug] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Project_DiscreteChannelRelease]
    ON [dbo].[Project]([Id] ASC)
    INCLUDE([DiscreteChannelRelease]);

