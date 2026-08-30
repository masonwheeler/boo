using NUnit.Framework;

namespace BooCompiler.Tests;

[TestFixture]
internal class RefStructsTestFixture : AbstractCompilerTestCase
{
	[Test]
	public void SpanHelloWorld() => RunCompilerTestCase(@"span-hello-world.boo");

	[Test]
	public void SpanHelloWorld2() => RunCompilerTestCase(@"span-hello-world2.boo");

	protected override string GetRelativeTestCasesPath() => "byreflike";

	protected override bool VerifyGeneratedAssemblies => true;
}
