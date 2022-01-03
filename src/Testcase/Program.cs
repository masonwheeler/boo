using System.Threading;
using System.Threading.Tasks;
using System;
using System.Linq;

class Program
{
    static void Main()
    {
		var asm = typeof(C0).Assembly;
		foreach (var type in asm.GetTypes())
		{
			Console.WriteLine(type.Name);
			foreach (var arg in (Attribute.GetCustomAttribute(asm.GetType(type.Name), typeof(VarArgsAttribute)) as VarArgsAttribute).Args)
				Console.WriteLine($"\t{arg}");
		}
	}
}