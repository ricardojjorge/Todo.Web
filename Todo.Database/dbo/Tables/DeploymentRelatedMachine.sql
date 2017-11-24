CREATE TABLE [dbo].[DeploymentRelatedMachine] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [DeploymentId] NVARCHAR (50) NOT NULL,
    [MachineId]    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DeploymentRelatedMachine] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DeploymentRelatedMachine_DeploymentId] FOREIGN KEY ([DeploymentId]) REFERENCES [dbo].[Deployment] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_DeploymentRelatedMachine_Machine]
    ON [dbo].[DeploymentRelatedMachine]([MachineId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_DeploymentRelatedMachine_Deployment]
    ON [dbo].[DeploymentRelatedMachine]([DeploymentId] ASC);

