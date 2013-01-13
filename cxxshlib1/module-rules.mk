check-cxxshlib-flags: PARAMS += $(call module_build_path,libcxxshlib1.so),ATTRIBUTE_CFLAGS
check-prerule-files: $(call module_build_path,cxxshlib1-prerule-file)

$(call module_build_path,cxxshlib1-prerule-file):
	@touch $@

clean-prerule-files: FILES += $(call module_build_path,cxxshlib1-prerule-file)
