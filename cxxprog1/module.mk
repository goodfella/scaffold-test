local_cxx_progs := cxxprog1

cxxprog1_srcs := cxxprog1.cc
cxxprog1_cflags := -DATTRIBUTE_CFLAGS
cxxprog1_srcs_cppflags := ATTRIBUTE_SRC_CPPFLAGS
cxxprog1_srcs_cflags := -DATTRIBUTE_SRC_CFLAGS
cxxprog1_shlibs := cxxshlib3 cxxshlib2 cxxshlib1
cxxprog1_pre_rules := $(call module_build_path,cxxprog1-prerule-file)
