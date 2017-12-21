#tool nuget:?package=xunit.runner.console&version=2.3.1
#tool nuget:?package=OpenCover&version=4.6.519
#tool nuget:?package=ReportGenerator&version=3.1.0
#tool "nuget:https://api.nuget.org/v3/index.json?package=GitVersion.CommandLine&version=3.6.5"
//#tool nuget:?package=GitVersion.CommandLine&version=3.6.5
//#tool "nuget:?package=GitVersion.CommandLine"

#load build/paths.cake

var target = Argument("Target", "Build");
var configuration = Argument("Configuration", "Release");
var codeCoverageReportPath = Argument<FilePath>("CodeCoverageReportPath", "coverage.zip");

var packageVersion = "0.1.0";

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

Task("Version")
	.Does(()=>
{
	var version = GitVersion();
	/*Information($"Calculated semantic version {version.SemVer}");

	//packageVersion = version.NuGetVersion;
	//Information($"Corresponding package version {packageVersion}");

	if(!BuildSystem.IsLocalBuild)
	{
		GitVersion(new GitVersionSettings
		{
			OutputType = GitVersionOutput.BuildServer,
			UpdateAssemblyInfo = true
		});
	}*/
});

RunTarget(target);