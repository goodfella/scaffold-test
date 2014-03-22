local_cxx_progs := cxxprog2

cxxprog2_srcs := cxxprog2.cc
cxxprog2_srcs_cflags := -DCXXPROG2_OUTPUT=$(if $$(CXXPROG2_OUTPUT),"\"$$(CXXPROG2_OUTPUT)\"","\"notset\"")
