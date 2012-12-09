#include "cxxshlib3.h"

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

#ifndef SRC_CPPFLAGS
#error missing -DSRC_CPPFLAGS
#endif

#ifndef CPPFLAGS
#error missing -DCPPFLAGS
#endif

int main()
{
    cxxshlib3::test1();
    cxxshlib3::test2();
    cxxshlib3::test3();

    return 0;
}
