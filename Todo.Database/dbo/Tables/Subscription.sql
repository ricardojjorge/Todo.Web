CREATE TABLE [dbo].[Subscription] (
    [Id]         NVARCHAR (50)  NOT NULL,
    [Name]       NVARCHAR (200) NOT NULL,
    [Type]       NVARCHAR (50)  NULL,
    [IsDisabled] BIT            DEFAULT ((0)) NOT NULL,
    [JSON]       NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Subscription_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_SubscriptionNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

