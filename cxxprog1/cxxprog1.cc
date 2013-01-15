#include "cxxshlib3.h"

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

#ifndef CFLAGS2
#error missing -CFLAGS2
#endif

#ifndef CXXFLAGS2
#error missing -DCXXFLAGS2
#endif

#ifndef SRC_CFLAGS2
#error missing -DSRC_CFLAGS2
#endif

#ifndef SRC_CXXFLAGS2
#error missing -DSRC_CXXFLAGS2
#endif

int main()
{
    cxxshlib3::test1();
    cxxshlib3::test2();
    cxxshlib3::test3();

    return 0;
}
