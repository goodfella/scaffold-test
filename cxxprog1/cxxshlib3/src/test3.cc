#include <iostream>
#include "cxxshlib3.h"
#include "cxxshlib2.h"

using namespace std;

void cxxshlib3::test3()
{
    cxxshlib2::test3();
    cout << "test3\n";
}
