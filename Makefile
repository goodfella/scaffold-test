# the include directories
INCDIRS = cxxshlib1/include
CFLAGS := -DCFLAGS
CXXFLAGS := -DCXXFLAGS

SRC_CFLAGS := -DSRC_CFLAGS
SRC_CXXFLAGS := -DSRC_CXXFLAGS

PROG_CXXFLAGS := -Wl$(comma)--defsym=PROG_CXXFLAGS="1"
PROG_CFLAGS := -Wl$(comma)--defsym=PROG_CFLAGS="2"

SHLIB_CXXFLAGS := -Wl$(comma)--defsym=SHLIB_CXXFLAGS="1"
SHLIB_CFLAGS := -Wl$(comma)--defsym=SHLIB_CFLAGS="2"


# module.mk files
SCAFFOLD_MODULES := cxxprog1/module.mk cxxprog2/module.mk cxxshlib2/module.mk cxxshlib1/module.mk

# The target specific variables are set here with := so that appending
# to them is immediatly expanded
check-cxxprog-flags: PARAMS :=
check-cxxshlib-flags: PARAMS :=
clean-prerule-files: FILES :=

# include the build system
include $(dir $(realpath $(MAKEFILE_LIST)))scaffold/scaffold.mk

INCDIRS += cxxshlib2/include

# global cxx flags used by all g++ invocations
CFLAGS += -DCFLAGS2
CXXFLAGS += -DCXXFLAGS2

SRC_CFLAGS += -DSRC_CFLAGS2
SRC_CXXFLAGS += -DSRC_CXXFLAGS2

PROG_CXXFLAGS += -Wl$(comma)--defsym=PROG_CXXFLAGS2="3"
PROG_CFLAGS += -Wl$(comma)--defsym=PROG_CFLAGS2="4"

SHLIB_CXXFLAGS += -Wl$(comma)--defsym=SHLIB_CXXFLAGS2="3"
SHLIB_CFLAGS += -Wl$(comma)--defsym=SHLIB_CFLAGS2="4"

.PHONY: post-build-checks check-prerule-files check-cxxprog-flags check-cxxshlib-flags clean-prerule-files

post-build-checks: check-prerule-files check-cxxprog-flags check-cxxshlib-flags
all: post-build-checks

# The files to check are the prerequisites defined in the module.mk
# files
check-prerule-files:
	stat $^ 2>&1 > /dev/null

# The PARAMS variable contains space delimited values with the format
# given below:

# <bin-path>,<comma-delimited-flags>
check-cxxprog-flags:
	./check-bin-flags.sh -f 'PROG_CFLAGS2' -f 'PROG_CXXFLAGS2' -f 'PROG_CFLAGS' -f 'PROG_CXXFLAGS' -- $(PARAMS) > /dev/null

# The PARAMS variable contains space delimited values with the format
# given below:

# <bin-path>,<comma-delimited-flags>
check-cxxshlib-flags:
	./check-bin-flags.sh -f 'SHLIB_CFLAGS2' -f 'SHLIB_CXXFLAGS2' -f 'SHLIB_CFLAGS' -f 'SHLIB_CXXFLAGS' -- $(PARAMS) > /dev/null

clean-emacs-backup-files:
	find -name '*~' | xargs -n 1 rm -f

clean: clean-prerule-files clean-emacs-backup-files

clean-prerule-files:
	rm -f $(FILES)
