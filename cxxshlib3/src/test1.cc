#include <iostream>
#include "cxxshlib3.h"
#include "cxxshlib2.h"

using namespace std;

void cxxshlib3::test1()
{
    cxxshlib2::test1();
    cout << "test1\n";
}
