CREATE PROCEDURE [dbo].[EventSourceDeployments]
(
    @fromDate datetimeoffset(7),
    @toDate datetimeoffset(7)
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT StartEvent.[AutoId] AS StartAutoId, EndEvent.[AutoId] AS EndAutoId
        ,StartEvent.[Occurred] AS StartTime, EndEvent.[Occurred] AS EndTime
        ,Deployment.[Id] AS Deployment_Id
        ,Deployment.[Name] AS Deployment_Name
        ,Deployment.[Created] AS Deployment_Created
        ,Deployment.[EnvironmentId] AS Deployment_EnvironmentId
        ,Deployment.[ProjectId] AS Deployment_ProjectId
        ,Deployment.[ReleaseId] AS Deployment_ReleaseId
        ,Deployment.[ProjectGroupId] AS Deployment_ProjectGroupId
        ,Deployment.[TaskId] AS Deployment_TaskId
        ,Deployment.[JSON] AS Deployment_JSON
        ,Deployment.[DeployedBy] AS Deployment_DeployedBy
        ,Deployment.[TenantId] AS Deployment_TenantId
        ,Deployment.[DeployedToMachineIds] AS Deployment_DeployedToMachineIds
        ,Deployment.[ChannelId] AS Deployment_ChannelId
    FROM [Event] AS EndEvent
    CROSS APPLY
    (
        -- Find the equivalent StartEvent (DeploymentStarted) for our EndEvent (DeploymentSucceeded)
        SELECT TOP 1 *
        FROM [Event]
        WHERE Category = 'DeploymentStarted'
        AND [Event].RelatedDocumentIds = EndEvent.RelatedDocumentIds
        AND [Event].Occurred < EndEvent.Occurred
        ORDER BY [Event].Occurred DESC
    ) StartEvent
    INNER JOIN EventRelatedDocument
    ON EndEvent.Id = EventRelatedDocument.EventId
    INNER JOIN Deployment
    ON Deployment.Id = EventRelatedDocument.RelatedDocumentId
    WHERE EndEvent.Category = 'DeploymentSucceeded'
    AND EndEvent.[Occurred] >= @fromDate
    AND EndEvent.[Occurred] < @toDate
END