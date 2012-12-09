# global cxx flags used by all g++ invocations
CFLAGS += -DCFLAGS
CXXFLAGS += -DCXXFLAGS
CPPFLAGS += CPPFLAGS

SRC_CFLAGS += -DSRC_CFLAGS
SRC_CXXFLAGS += -DSRC_CXXFLAGS

PROG_CFLAGS += -DPROG_CFLAGS
PROG_CXXFLAGS += -DPROG_CXXFLAGS -Wl$(comma)--defsym$(comma)PROG_CXXFLAGS="1"

SHLIB_CFLAGS += -DSHLIB_CFLAGS
SHLIB_CXXFLAGS += -DSHLIB_CXXFLAGS

# the include directories
INCDIRS := cxxshlib1/include cxxshlib2/include cxxshlib3/include

# module.mk files
SCAFFOLD_MODULES := $(shell find -name 'module.mk')

# include the build system
include scaffold/scaffold.mk

SRC_CPPFLAGS += SRC_CPPFLAGS


.PHONY: all check-prerules clean-prerule-files

all: check-prerules

check-prerules:
	@stat cxxprog1-prerule-file > /dev/null
	@stat cxxshlib1-prerule-file > /dev/null

clean: clean-prerule-files
	@find -name '*~' | xargs -n 1 rm -f

clean-prerule-files:
	rm -f cxxprog1-prerule-file
	rm -f cxxshlib1-prerule-file

cxxshlib1/module.mk.pcm: cxxshlib1/module.mk
	cat $^ > $@
	MODULE=$^ $(MAKE) -s -f scaffold/print-module.mk >> $@
