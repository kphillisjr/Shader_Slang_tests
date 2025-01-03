implementing "ExampleShaderModule";

__include "InterfaceFoo1";

/* Specify This File is using FooNameSpace. */

using FooNameSpace;

/* Example Foo Type */
struct MyFooType1 : Interfaces.InterfaceFoo1
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
struct MyFooTypeAlt1 : Interfaces::InterfaceFoo1
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