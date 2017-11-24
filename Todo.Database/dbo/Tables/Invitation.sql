CREATE TABLE [dbo].[Invitation] (
    [Id]             NVARCHAR (50)  NOT NULL,
    [InvitationCode] NVARCHAR (200) NOT NULL,
    [JSON]           NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Invitation_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

