implementing ExampleShaderModule;

__include InterfaceBar;

/* Example Foo Type */
public struct MyBarType : BarNameSpace.Interfaces.InterfaceBar;
{
    public int BarMethod()
    {
        return (int)1;
    };
    public int BarMethod2(int a)
    {
        return (int)a;
    };
}

/* Alternate Namespace Syntax */
public struct MyBarTypeAlt : BarNameSpace::Interfaces::InterfaceBar
{
    public int BarMethod()
    {
        return (int)2;
    }

    public int BarMethod2(int a)
    {
        return (int)a;
    };
}