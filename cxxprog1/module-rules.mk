check-prerule-files: $(call module_build_fullpath,cxxprog1-prerule-file)
check-cxxprog-flags: PARAMS += $(call module_build_fullpath,cxxprog1),ATTRIBUTE_CFLAGS
check-cxxprog-flags: $(call module_build_fullpath,cxxprog1)

$(call module_build_fullpath,cxxprog1-prerule-file):
	@touch $@

$(call module_relpath,cxxprog-obj.o): $(call module_relpath,cxxprog-obj.cc)
	g++ -o $@ -c $<

clean-prerule-files: FILES += $(call module_relpath,cxxprog1-prerule-file)
