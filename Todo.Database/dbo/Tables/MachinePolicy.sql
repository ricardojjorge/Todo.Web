CREATE TABLE [dbo].[MachinePolicy] (
    [Id]        NVARCHAR (50)  NOT NULL,
    [Name]      NVARCHAR (200) NOT NULL,
    [IsDefault] BIT            DEFAULT ((0)) NOT NULL,
    [JSON]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_MachinePolicy_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_MachinePolicy] UNIQUE NONCLUSTERED ([Name] ASC)
);

