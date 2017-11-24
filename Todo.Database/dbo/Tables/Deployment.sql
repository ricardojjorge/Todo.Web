CREATE TABLE [dbo].[Deployment] (
    [Id]                   NVARCHAR (50)      NOT NULL,
    [Name]                 NVARCHAR (200)     NOT NULL,
    [Created]              DATETIMEOFFSET (7) NOT NULL,
    [EnvironmentId]        NVARCHAR (50)      NOT NULL,
    [ProjectId]            NVARCHAR (50)      NOT NULL,
    [ReleaseId]            NVARCHAR (50)      NOT NULL,
    [ProjectGroupId]       NVARCHAR (50)      NOT NULL,
    [TaskId]               NVARCHAR (50)      NULL,
    [JSON]                 NVARCHAR (MAX)     NOT NULL,
    [DeployedBy]           NVARCHAR (200)     NOT NULL,
    [TenantId]             NVARCHAR (50)      NULL,
    [DeployedToMachineIds] NVARCHAR (MAX)     NULL,
    [ChannelId]            NVARCHAR (50)      NOT NULL,
    CONSTRAINT [PK_Deployment_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Deployment_ChannelId]
    ON [dbo].[Deployment]([ChannelId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Deployment_TenantId]
    ON [dbo].[Deployment]([TenantId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Deployment_Index]
    ON [dbo].[Deployment]([ReleaseId] ASC, [TaskId] ASC, [EnvironmentId] ASC)
    INCLUDE([Id], [ProjectId], [ProjectGroupId], [Name], [Created]);

