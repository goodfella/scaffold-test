local_cxx_progs := cxxprog1
local_cxx_shlibs := cxxshlib3

cxxprog1_srcs := cxxprog1.cc
cxxprog1_cflags := -Wl$(comma)--defsym=ATTRIBUTE_CFLAGS="1"
cxxprog1_srcs_cppflags := ATTRIBUTE_SRC_CPPFLAGS
cxxprog1_srcs_cflags := -DATTRIBUTE_SRC_CFLAGS
cxxprog1_shlibs := cxxshlib3 cxxshlib2 cxxshlib1
cxxprog1_pre_rules := $(call module_build_path,cxxprog1-prerule-file)

cxxshlib3_srcs := cxxshlib3/src/test1.cc cxxshlib3/src/test2.cc cxxshlib3/src/test3.cc
cxxshlib3_shlibs := cxxshlib2
