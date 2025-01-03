implementing "ExampleShaderModule";

__include InterfaceFoo;

/* Example Foo Type */
struct MyFooType : FooNameSpace.Interfaces.InterfaceFoo
{
    int myMethod(float arg)
    {
        return (int)arg + 1;
    }
    bool myMethod2(float arg)
    {
        return false;
    }
}

/* Alternate Namespace Syntax */
struct MyFooTypeAlt : FooNameSpace::Interfaces::InterfaceFoo
{
    int myMethod(float arg)
    {
        return (int)arg + 1;
    }
    bool myMethod2(float arg)
    {
        return false;
    }
}