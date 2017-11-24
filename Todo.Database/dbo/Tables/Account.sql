CREATE TABLE [dbo].[Account] (
    [Id]             NVARCHAR (210) NOT NULL,
    [AccountType]    NVARCHAR (50)  NOT NULL,
    [Name]           NVARCHAR (200) NOT NULL,
    [EnvironmentIds] NVARCHAR (MAX) NOT NULL,
    [JSON]           NVARCHAR (MAX) NOT NULL,
    [TenantIds]      NVARCHAR (MAX) NULL,
    [TenantTags]     NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Account_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_AccountUniqueName] UNIQUE NONCLUSTERED ([Name] ASC)
);

