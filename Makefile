# global cxx flags used by all g++ invocations
CFLAGS += -DCFLAGS
CXXFLAGS += -DCXXFLAGS
CPPFLAGS += CPPFLAGS

SRC_CFLAGS += -DSRC_CFLAGS
SRC_CXXFLAGS += -DSRC_CXXFLAGS

PROG_CXXFLAGS += -Wl$(comma)--defsym=PROG_CXXFLAGS="1"
PROG_CFLAGS += -Wl$(comma)--defsym=PROG_CFLAGS="2"

SHLIB_CFLAGS += -Wl$(comma)--defsym=SHLIB_CFLAGS="1"
SHLIB_CXXFLAGS += -Wl$(comma)--defsym=SHLIB_CXXFLAGS="1"

# the include directories
INCDIRS := cxxshlib1/include cxxshlib2/include cxxshlib3/include

MAKEFILE_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

# module.mk files
SCAFFOLD_MODULES := $(shell find $(MAKEFILE_DIR) -name 'module.mk')

# include the build system
include $(MAKEFILE_DIR)scaffold/scaffold.mk

SRC_CPPFLAGS += SRC_CPPFLAGS


.PHONY: all check-prerules check-cxxprog-flags clean-prerule-files

all: check-prerules check-cxxprog-flags check-cxxshlib-flags

check-prerules:
	@stat cxxprog1-prerule-file > /dev/null
	@stat cxxshlib1-prerule-file > /dev/null

check-cxxprog-flags:
	readelf -a $(SCAFFOLD_BUILD_DIR)cxxprog1/cxxprog1 | grep -q 'PROG_CFLAGS'
	readelf -a $(SCAFFOLD_BUILD_DIR)cxxprog1/cxxprog1 | grep -q 'PROG_CXXFLAGS'

check-cxxshlib-flags:
	readelf -a $(SCAFFOLD_BUILD_DIR)cxxshlib1/libcxxshlib1.so | grep -q 'SHLIB_CFLAGS'
	readelf -a $(SCAFFOLD_BUILD_DIR)cxxshlib1/libcxxshlib1.so | grep -q 'SHLIB_CXXFLAGS'

clean-emacs-backup-files:
	find -name '*~' | xargs -n 1 rm -f

clean: clean-prerule-files clean-emacs-backup-files

clean-prerule-files:
	rm -f cxxprog1-prerule-file
	rm -f cxxshlib1-prerule-file
