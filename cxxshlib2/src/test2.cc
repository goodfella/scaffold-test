#include <iostream>
#include "cxxshlib2.h"
#include "cxxshlib1.h"

using namespace std;

void cxxshlib2::test2()
{
    cxxshlib1::test2();
    cout << "test2\n";
}
