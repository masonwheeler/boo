using NUnit.Framework;

namespace BooCompiler.Tests;

[TestFixture]
internal class RefStructsTestFixture : AbstractCompilerTestCase
{
	[Test]
	public void SpanHelloWorld() => RunCompilerTestCase(@"span-hello-world.boo");

	protected override string GetRelativeTestCasesPath() => "byreflike";

	protected override bool VerifyGeneratedAssemblies => true;
}
