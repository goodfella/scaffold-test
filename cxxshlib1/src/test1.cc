#include <iostream>
#include "cxxshlib1.h"

#ifndef ATTRIBUTE_SRC_CPPFLAGS
#error missing ATTRIBUTE_SRC_CPPFLAG in cppflags attribute
#endif

#ifndef ATTRIBUTE_SRC_CFLAGS
#error missing -DATTRIBUTE_SRC_CFLAGS in cflags attribute
#endif

#ifndef CFLAGS
#error missing -CFLAGS
#endif

#ifndef CXXFLAGS
#error missing -DCXXFLAGS
#endif

#ifndef SRC_CFLAGS
#error missing -DSRC_CFLAGS
#endif

#ifndef SRC_CXXFLAGS
#error missing -DSRC_CXXFLAGS
#endif


using namespace std;

void cxxshlib1::test1()
{
    cout << "test1\n";
}
