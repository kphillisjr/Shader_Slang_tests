implementing "ExampleShaderModule";

__include "InterfaceBar1";

using BarNameSpace;

/* Example Foo Type */
public struct MyBarType1 : Interfaces.InterfaceBar1;
{
    int myMethod()
    {
        return (int)1;
    };
    int myMethod2(int a)
    {
        return (int)a;
    };
}

/* Alternate Namespace Syntax */
public struct MyBarTypeAlt1 : Interfaces::InterfaceBar1
{
    int myMethod()
    {
        return (int)2;
    }

    int myMethod2(int a)
    {
        return (int)a;
    };
}