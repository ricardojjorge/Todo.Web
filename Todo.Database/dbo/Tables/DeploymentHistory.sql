CREATE TABLE [dbo].[DeploymentHistory] (
    [DeploymentId]    NVARCHAR (50)      NOT NULL,
    [DeploymentName]  NVARCHAR (200)     NOT NULL,
    [ProjectId]       NVARCHAR (50)      NOT NULL,
    [ProjectName]     NVARCHAR (200)     NOT NULL,
    [ProjectSlug]     NVARCHAR (210)     NOT NULL,
    [EnvironmentId]   NVARCHAR (50)      NOT NULL,
    [EnvironmentName] NVARCHAR (200)     NOT NULL,
    [ReleaseId]       NVARCHAR (150)     NOT NULL,
    [ReleaseVersion]  NVARCHAR (100)     NOT NULL,
    [TaskId]          NVARCHAR (50)      NOT NULL,
    [TaskState]       NVARCHAR (50)      NOT NULL,
    [Created]         DATETIMEOFFSET (7) NOT NULL,
    [QueueTime]       DATETIMEOFFSET (7) NOT NULL,
    [StartTime]       DATETIMEOFFSET (7) NULL,
    [CompletedTime]   DATETIMEOFFSET (7) NULL,
    [DurationSeconds] INT                NULL,
    [DeployedBy]      NVARCHAR (200)     NULL,
    [TenantId]        NVARCHAR (50)      NULL,
    [TenantName]      NVARCHAR (200)     NULL,
    [ChannelId]       NVARCHAR (50)      NULL,
    [ChannelName]     NVARCHAR (200)     NULL,
    CONSTRAINT [PK_DeploymentHistory_DeploymentId] PRIMARY KEY CLUSTERED ([DeploymentId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_DeploymentHistory_Created]
    ON [dbo].[DeploymentHistory]([Created] ASC);

