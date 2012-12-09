#include <iostream>
#include "cxxshlib2.h"
#include "cxxshlib1.h"

using namespace std;

void cxxshlib2::test3()
{
    cxxshlib1::test3();
    cout << "test3\n";
}
