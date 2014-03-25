local_cxx_progs := cxxprog1
local_cxx_shlibs := cxxshlib3

cxxprog1_srcs := cxxprog1.cc
cxxprog1_objs := cxxprog-obj.o
cxxprog1_cflags := -Wl$(comma)--defsym=ATTRIBUTE_CFLAGS="1"
cxxprog1_srcs_cflags := -DATTRIBUTE_SRC_CFLAGS
cxxprog1_shlibs := cxxshlib3 cxxshlib2 cxxshlib1
cxxprog1_pre_rules := $(call module_build_fullpath,cxxprog1-prerule-file)
cxxprog1_aliases := cxxprog1-alias multi-target-alias

cxxshlib3_srcs := cxxshlib3/src/test1.cc cxxshlib3/src/test2.cc cxxshlib3/src/test3.cc
cxxshlib3_shlibs := cxxshlib2
cxxshlib3_aliases := cxxshlib3-alias multi-target-alias

cxxshlib3_set_incdirs := $(call module_relpath,cxxshlib3/include)
module_rules := module-rules.mk module-rules2.mk
