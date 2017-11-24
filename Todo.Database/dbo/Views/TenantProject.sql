------------------------------------------------
-- Add TenantProject view
------------------------------------------------

CREATE VIEW [dbo].[TenantProject]
AS
SELECT Tenant.Id As TenantId, Project.Id AS ProjectId
FROM Project
INNER JOIN Tenant On Tenant.ProjectIds LIKE '%|'+ Project.Id +'|%'