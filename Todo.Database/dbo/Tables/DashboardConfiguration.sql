CREATE TABLE [dbo].[DashboardConfiguration] (
    [Id]                     NVARCHAR (50)  NOT NULL,
    [IncludedEnvironmentIds] NVARCHAR (MAX) NOT NULL,
    [IncludedProjectIds]     NVARCHAR (MAX) NOT NULL,
    [JSON]                   NVARCHAR (MAX) NOT NULL,
    [IncludedTenantTags]     NVARCHAR (MAX) NULL,
    [IncludedTenantIds]      NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_DashboardConfiguration_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

