#!/bin/bash

if [ -n "${CHECK_BIN_FLAGS_DEBUG}" ]; then
    set -x
fi

while [ $# -gt 0 ]
do
    # handle the options

    case "$1" in
	-f)
	    shift
	    # save each extra flag
	    EXTRA_FLAGS="${EXTRA_FLAGS:+$EXTRA_FLAGS }$1"
	    ;;
	--)
	    shift
	    break;
	    ;;
    esac

    shift
done

while [ $# -gt 0 ]
do
    # handle the parameters
    PARAMS="${PARAMS:+$PARAMS }$1"
    shift
done

for param in $PARAMS
do
    # Parse the path and flags

    BIN_PATH="$(echo $param | cut -d',' -f1)"
    FLAGS="$(echo $param | cut -d',' -f2- | tr ',' ' ') $EXTRA_FLAGS"

    for flag in $FLAGS
    do
	# check each flag
	if ! readelf -a $BIN_PATH | grep $flag; then
	    echo "fatal: missing $flag in $BIN_PATH" >&2
	    exit 1
	fi
    done
done
