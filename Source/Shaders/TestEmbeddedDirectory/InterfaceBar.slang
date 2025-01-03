// This shows The Simplified Implementing Syntax.
// This file is part of the module ExampleShaderModule, and
// the Primary (root) file is located at:
// ../ExampleShaderModule.slang

implementing ExampleShaderModule;

namespace BarNameSpace.Interfaces
{
	public interface InterfaceBar
	{
		/* 
			All of these Functions are Implied as Public
		*/
        int BarMethod();
        int BarMethod2(int);
	}
}