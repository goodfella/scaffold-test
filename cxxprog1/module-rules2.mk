clean: clean-cxxprog-obj.o
.PHONY: clean-cxxprog-obj.o
clean-cxxprog-obj.o: $(call module_relpath,cxxprog-obj.o)
	rm -f $<
