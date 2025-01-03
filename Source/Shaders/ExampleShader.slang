import ExampleShaderModule;

#ifdef ENABLE_BAR_INTERACE
/* From TestEmbeddedDirectory/MyBarType.slang */
MyBarTypeAlt Bar1;

/* From TestEmbeddedDirectory/MyBarType1.slang */
MyBarTypeAlt1 Bar2;

/* From TestEmbeddedDirectory/MyBarType2.slang */
MyBarTypeAlt2 Bar3;

struct ExampleBar : BarNameSpace.Interfaces.InterfaceBar
{
    int BarMethod()
    {
        return 2;
    }
    bool BarMethod2(float arg)
    {
        return false;
    }
}

struct ExampleBar1 : BarNameSpace.Interfaces.InterfaceBar1
{
    int BarMethod()
    {
        return 2;
    }
    bool BarMethod2(float arg)
    {
        return false;
    }
}

struct ExampleBar2 : BarNameSpace.Interfaces.InterfaceBar2
{
    int BarMethod()
    {
        return 2;
    }
    bool BarMethod2(float arg)
    {
        return false;
    }
}

int BarTestResult = { 0 };
void runBarTests()
{
    if(Bar1.BarMethod() < 0) {
        BarTestResult=1;
    }
}
#endif
void main()
{
    runFooTests();
#ifdef ENABLE_BAR_INTERACE
    runBarTests();
#endif
}
