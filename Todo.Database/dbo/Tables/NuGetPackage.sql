CREATE TABLE [dbo].[NuGetPackage] (
    [Id]              NVARCHAR (450) NOT NULL,
    [PackageId]       NVARCHAR (100) NOT NULL,
    [Version]         NVARCHAR (349) NOT NULL,
    [VersionMajor]    INT            NOT NULL,
    [VersionMinor]    INT            NOT NULL,
    [VersionBuild]    INT            NOT NULL,
    [VersionRevision] INT            NOT NULL,
    [VersionSpecial]  NVARCHAR (250) NULL,
    [JSON]            NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_NuGetPackage_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

