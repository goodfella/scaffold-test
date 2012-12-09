#include <iostream>
#include "cxxshlib3.h"
#include "cxxshlib2.h"

using namespace std;

void cxxshlib3::test2()
{
    cxxshlib2::test2();
    cout << "test2\n";
}
