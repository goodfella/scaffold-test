clean: clean-cxxprog-obj.o
.PHONY: clean-cxxprog-obj.o
clean-cxxprog-obj.o: $(call module_build_fullpath,cxxprog-obj.o)
	rm -f $<
