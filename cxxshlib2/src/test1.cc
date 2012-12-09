#include <iostream>
#include "cxxshlib2.h"
#include "cxxshlib1.h"

using namespace std;

void cxxshlib2::test1()
{
    cxxshlib1::test1();
    cout << "test1\n";
}
