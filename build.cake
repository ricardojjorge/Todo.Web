#tool nuget:?package=xunit.runner.console&version=2.3.1
#tool nuget:?package=OpenCover&version=4.6.519
#tool nuget:?package=ReportGenerator&version=3.1.0

#load build/paths.cake

var target = Argument("Target", "Build");
var configuration = Argument("Configuration", "Release");
var codeCoverageReportPath = Argument<FilePath>("CodeCoverageReportPath", "coverage.zip");

Task("Restore")
	.Does(()=>
{
	NuGetRestore(Paths.SolutionFile) ;
});

Task("Build")
	.IsDependentOn("Restore")
	.Does(()=>
{
	DotNetBuild(
	  Paths.SolutionFile,
	  settings => settings.SetConfiguration(configuration)
						  .WithTarget("Build"));
});

Task("Test")
	.IsDependentOn("Build")
	.Does(()=>
{
	OpenCover(
		tool => tool.XUnit2(
			$"**/bin/{configuration}/*Tests.dll",
			new XUnit2Settings
			{
				ShadowCopy = false
			}),
		Paths.CodeCoverageResultFile,
		new OpenCoverSettings()
			.WithFilter("+[Todo.Web.*]*")
			.WithFilter("-[Todo.Web.*Testes*]*")
	);
});

Task("Report-Coverage")
	.IsDependentOn("Test")
	.Does(() =>
{
	ReportGenerator(
		Paths.CodeCoverageResultFile,
		Paths.CodeCoverageReportDirectory,
		new ReportGeneratorSettings
		{
			ReportTypes = new[] { ReportGeneratorReportType.Html }
		}
	);

	Zip(
		Paths.CodeCoverageReportDirectory,
		MakeAbsolute(codeCoverageReportPath)
	);
});

RunTarget(target);