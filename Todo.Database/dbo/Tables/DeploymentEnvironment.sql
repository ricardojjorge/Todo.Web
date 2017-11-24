CREATE TABLE [dbo].[DeploymentEnvironment] (
    [Id]        NVARCHAR (50)  NOT NULL,
    [Name]      NVARCHAR (200) NOT NULL,
    [SortOrder] INT            NOT NULL,
    [JSON]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_DeploymentEnvironment_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_DeploymentEnvironmentNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

