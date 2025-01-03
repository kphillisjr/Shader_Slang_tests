implementing "ExampleShaderModule.slang";

__include "InterfaceFoo2.slang";

/* Specify This File is using FooNameSpace. */

using FooNameSpace::Interfaces;

/* Example Foo Type */
struct MyFooType2 : InterfaceFoo2
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
struct MyFooTypeAlt2 : InterfaceFoo2
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