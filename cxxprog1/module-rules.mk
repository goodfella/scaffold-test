check-prerule-files: $(call module_build_fullpath,cxxprog1-prerule-file)
check-cxxprog-flags: PARAMS += $(call module_build_fullpath,cxxprog1),ATTRIBUTE_CFLAGS
check-cxxprog-flags: $(call module_build_fullpath,cxxprog1)

$(call module_build_fullpath,cxxprog1-prerule-file):
	@touch $@

$(call module_build_fullpath,cxxprog-obj.o): $(call module_source_fullpath,cxxprog-obj.cc)
	g++ -o $@ -c $<

clean-prerule-files: FILES += $(call module_build_fullpath,cxxprog1-prerule-file)

clean: clean-cxxprog-obj.o
.PHONY: clean-cxxprog-obj.o
clean-cxxprog-obj.o: $(call module_build_fullpath,cxxprog-obj.o)
	rm -f $<
