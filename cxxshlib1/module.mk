local_cxx_shlibs := cxxshlib1

cxxshlib1_srcs := src/test1.cc src/test2.cc src/test3.cc
cxxshlib1_cflags := -DATTRIBUTE_CFLAGS
cxxshlib1_srcs_cppflags := ATTRIBUTE_SRC_CPPFLAGS
cxxshlib1_srcs_cflags := -DATTRIBUTE_SRC_CFLAGS
cxxshlib1_pre_rules := make-cxxshlib1-prerule-file
