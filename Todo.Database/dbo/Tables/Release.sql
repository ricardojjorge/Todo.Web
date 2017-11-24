CREATE TABLE [dbo].[Release] (
    [Id]                                 NVARCHAR (150)     NOT NULL,
    [Version]                            NVARCHAR (100)     NOT NULL,
    [Assembled]                          DATETIMEOFFSET (7) NOT NULL,
    [ProjectId]                          NVARCHAR (150)     NOT NULL,
    [ProjectVariableSetSnapshotId]       NVARCHAR (150)     NOT NULL,
    [ProjectDeploymentProcessSnapshotId] NVARCHAR (150)     NOT NULL,
    [JSON]                               NVARCHAR (MAX)     NOT NULL,
    [ChannelId]                          NVARCHAR (50)      NOT NULL,
    CONSTRAINT [PK_Release_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ReleaseVersionUnique] UNIQUE NONCLUSTERED ([Version] ASC, [ProjectId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Release_ProjectDeploymentProcessSnapshotId]
    ON [dbo].[Release]([ProjectDeploymentProcessSnapshotId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Release_ProjectId_Version_Assembled]
    ON [dbo].[Release]([ProjectId] ASC, [Version] ASC, [Assembled] DESC)
    INCLUDE([Id], [ChannelId], [ProjectVariableSetSnapshotId], [ProjectDeploymentProcessSnapshotId], [JSON]);


GO
CREATE NONCLUSTERED INDEX [IX_Release_ProjectId_ChannelId_Assembled]
    ON [dbo].[Release]([ProjectId] ASC, [ChannelId] ASC, [Assembled] DESC)
    INCLUDE([Id], [Version], [ProjectVariableSetSnapshotId], [ProjectDeploymentProcessSnapshotId], [JSON]);

