implementing "ExampleShaderModule.slang";

__include "InterfaceBar2.slang";

using namespace BarNameSpace.Interfaces;

/* Example Foo Type */
public struct MyBarType2 : InterfaceBar2
{
    int BarMethod()
    {
        return (int)1;
    };
    int BarMethod2(int a)
    {
        return (int)a;
    };
}

/* Alternate Namespace Syntax */
public struct MyBarTypeAlt2 : InterfaceBar2
{
    int BarMethod()
    {
        return (int)2;
    }

    int BarMethod2(int a)
    {
        return (int)a;
    };
}