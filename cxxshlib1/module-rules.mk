check-cxxshlib-flags: PARAMS += $(call module_build_fullpath,libcxxshlib1.so),ATTRIBUTE_CFLAGS
check-cxxshlib-flags: $(call module_build_fullpath,libcxxshlib1.so)
check-prerule-files: $(call module_build_fullpath,cxxshlib1-prerule-file)

$(call module_build_fullpath,cxxshlib1-prerule-file):
	@touch $@

$(call module_relpath,cxxshlib-obj.o): $(call module_relpath,cxxshlib-obj.cc)
	g++ -o $@ -c $<

clean-prerule-files: FILES += $(call module_build_fullpath,cxxshlib1-prerule-file)

clean: clean-cxxshlib-obj.o
.PHONY: clean-cxxshlib-obj.o
clean-cxxshlib-obj.o: $(call module_relpath,cxxshlib-obj.o)
	rm -f $<
