module ExampleShaderModule;
// #define ENABLE_BAR_INTERACE 1
// To Publicly available Bar Type, define: 
// ENABLE_BAR_INTERACE
// USING_FILENAME_EXTENSTION
/*
 * Simplified Include
 * (Directory).(filename without extension)
 * (Directory).(Sub Directory).(filename without extension)
 * (filename without extension)
 */
__include TestEmbeddedDirectory.EmbeddedSubDirectory.InterfaceFoo;
__include TestEmbeddedDirectory.EmbeddedSubDirectory.MyFooType;

MyFooType FooA;
MyFooTypeAlt FooAltA;

/*
 * Simplified Include
 * __include "(Directory)/(filename without extension)"
 * __include "(Directory)/(Sub Directory)/(filename without extension)"
 * __include "(filename without extension)"
 */
__include "TestEmbeddedDirectory/EmbeddedSubDirectory/InterfaceFoo1";
__include "TestEmbeddedDirectory/EmbeddedSubDirectory/MyFooType1";

MyFooType1 FooA1;
MyFooTypeAlt1 FooAltA1;

#ifdef USING_FILENAME_EXTENSTION
/*
 * Traditional (c-Style) include path: (with file extension.)
 * __include "(Directory)/(filename with extension)"
 * __include "(Directory)/(Sub Directory)/(filename with extension)"
 * __include "(filename with extension)"
 */

__include "TestEmbeddedDirectory/EmbeddedSubDirectory/InterfaceFoo2.slang";

/* Some Example types using the InterfaceFoo2*/
__include "TestEmbeddedDirectory/EmbeddedSubDirectory/MyFooType2.slang";

MyFooType2 FooA2;
MyFooTypeAlt2 FooAltA2;
#endif
/* Some Code using InterfaceFoo and types based on InterfaceFoo. */
void MyFooTypeTestsArg(MyFooType A, MyFooTypeAlt B)
{
    if (A.myMethod2(0.0f)) {
        A.myMethod(1.0f);
    };

    if (B.myMethod2(0.0f)) {
        B.myMethod(1.0f);
    };
}

void MyFooTypeTests()
{
    MyFooTypeTestsArg(FooA, FooAltA);
}

/* Some Code using InterfaceFoo and types based on InterfaceFoo. */
void MyFooType1TestsArg(MyFooType1 A, MyFooTypeAlt1 B)
{
    if (A.myMethod2(0.0f)) {
        A.myMethod(1.0f);
    };

    if (B.myMethod2(0.0f)) {
        B.myMethod(1.0f);
    };
}

void MyFooType1Tests()
{
    MyFooType1TestsArg(FooA1, FooAltA1);
}

/* Actually Do something */
void MyFooType2Tests()
{
#ifdef USING_FILENAME_EXTENSTION
    /* Prevent this from Being Optimized Out. */

    if (FooA2.myMethod2(0.0f)) {
        FooA2.myMethod(1.0f);
    };

    if (FooAltA2.myMethod2(0.0f)) {
        FooAltA2.myMethod(1.0f);
    };
#endif
}

public void runFooTests()
{
    /* Run Test of InterfaceFoo*/
    MyFooTypeTests();

    /* Run Test of InterfaceFoo1*/
    MyFooType1Tests();

    /* Run Test of InterfaceFoo2*/
    MyFooType2Tests();

}


#ifdef ENABLE_BAR_INTERACE
/*
 * The Following Should be publicly available.
 */

/*
 * Simplified Include
 * (Directory).(filename without extension)
 * (Directory).(Sub Directory).(filename without extension)
 * (filename without extension)
 */
__include TestEmbeddedDirectory.InterfaceBar;
__include TestEmbeddedDirectory.MyBarType;

MyBarType BarA;
MyBarTypeAlt BarAltA;

/*
 * Simplified Include
 * __include "(Directory)/(filename without extension)"
 * __include "(Directory)/(Sub Directory)/(filename without extension)"
 * __include "(filename without extension)"
 */
__include "TestEmbeddedDirectory/InterfaceBar1";
__include "TestEmbeddedDirectory/MyBarType1";

MyBarType1 BarA1;
MyBarTypeAlt1 BarAltA1;

#ifdef USING_FILENAME_EXTENSTION
/*
 * Traditional (c-Style) include path: (with file extension.)
 * __include "(Directory)/(filename with extension)"
 * __include "(Directory)/(Sub Directory)/(filename with extension)"
 * __include "(filename with extension)"
 */
__include "TestEmbeddedDirectory/InterfaceBar2.slang";

/* Some Example types using the InterfaceBar2 */
__include "TestEmbeddedDirectory/MyBarType2.slang";

MyBarType2 BarA2;
MyBarTypeAlt2 BarAltA2;
#endif
/* Some Code using InterfaceFoo and types based on InterfaceFoo. */
void MyBarTypeTestsArg(MyBarType A, MyBarTypeAlt B)
{
    if (A.BarMethod() < 9999) {
        A.BarMethod2(1);
    };

    if (-1 < B.BarMethod()) {
        B.BarMethod2(1);
    };
}

void MyBarTypeTests()
{
    MyBarTypeTestsArg(BarA, BarAltA);
}

/* Some Code using InterfaceFoo and types based on InterfaceFoo. */
void MyBarType1TestsArg(MyBarType1 A, MyBarTypeAlt1 B)
{
    if (A.BarMethod() < 9999) {
        A.BarMethod2(1);
    };

    if (-1 < B.BarMethod()) {
        B.BarMethod2(1);
    };
}

void MyBarType1Tests()
{
    MyBarType1TestsArg(BarA1, BarAltA1);
}

/* Actually Do something */
void MyBarType2Tests()
{
#ifdef USING_FILENAME_EXTENSTION
    if (BarA2.BarMethod() < 9999) {
        BarA2.BarMethod2(1);
    };

    if (-1 < BarAltA2.BarMethod()) {
        BarAltA2.BarMethod2(1);
    };
#endif
}

#endif

public void runBarTests()
{
#ifdef ENABLE_BAR_INTERACE
    /* Run Test of InterfaceBar*/
    MyBarTypeTests();

    /* Run Test of InterfaceBar1*/
    MyBarType1Tests();

    /* Run Test of InterfaceBar2*/

    MyBarType2Tests();
#endif
}