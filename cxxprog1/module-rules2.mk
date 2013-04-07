clean: clean-cxxprog-obj.o
.PHONY: clean-cxxprog-obj.o
clean-cxxprog-obj.o: $(call module_source_fullpath,cxxprog-obj.o)
	rm -f $<
