include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(lab1_default_library_list )

# Handle files with suffix s, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_assemble)
add_library(lab1_default_default_AVR_GCC_assemble OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_assemble})
    lab1_default_default_AVR_GCC_assemble_rule(lab1_default_default_AVR_GCC_assemble)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_assemble>")

endif()

# Handle files with suffix S, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_assembleWithPreprocess)
add_library(lab1_default_default_AVR_GCC_assembleWithPreprocess OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_assembleWithPreprocess})
    lab1_default_default_AVR_GCC_assembleWithPreprocess_rule(lab1_default_default_AVR_GCC_assembleWithPreprocess)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_assembleWithPreprocess>")

endif()

# Handle files with suffix [cC], for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_compile)
add_library(lab1_default_default_AVR_GCC_compile OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_compile})
    lab1_default_default_AVR_GCC_compile_rule(lab1_default_default_AVR_GCC_compile)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_compile>")

endif()

# Handle files with suffix cpp, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_compile_cpp)
add_library(lab1_default_default_AVR_GCC_compile_cpp OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_compile_cpp})
    lab1_default_default_AVR_GCC_compile_cpp_rule(lab1_default_default_AVR_GCC_compile_cpp)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_compile_cpp>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_ihex)
add_library(lab1_default_default_AVR_GCC_objcopy_ihex OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_ihex})
    lab1_default_default_AVR_GCC_objcopy_ihex_rule(lab1_default_default_AVR_GCC_objcopy_ihex)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_objcopy_ihex>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_eep)
add_library(lab1_default_default_AVR_GCC_objcopy_eep OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_eep})
    lab1_default_default_AVR_GCC_objcopy_eep_rule(lab1_default_default_AVR_GCC_objcopy_eep)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_objcopy_eep>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_lss)
add_library(lab1_default_default_AVR_GCC_objcopy_lss OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_lss})
    lab1_default_default_AVR_GCC_objcopy_lss_rule(lab1_default_default_AVR_GCC_objcopy_lss)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_objcopy_lss>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_srec)
add_library(lab1_default_default_AVR_GCC_objcopy_srec OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_srec})
    lab1_default_default_AVR_GCC_objcopy_srec_rule(lab1_default_default_AVR_GCC_objcopy_srec)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_objcopy_srec>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_sig)
add_library(lab1_default_default_AVR_GCC_objcopy_sig OBJECT ${lab1_default_default_AVR_GCC_FILE_TYPE_objcopy_sig})
    lab1_default_default_AVR_GCC_objcopy_sig_rule(lab1_default_default_AVR_GCC_objcopy_sig)
    list(APPEND lab1_default_library_list "$<TARGET_OBJECTS:lab1_default_default_AVR_GCC_objcopy_sig>")

endif()


# Main target for this project
add_executable(lab1_default_image_HWAoIxfN ${lab1_default_library_list})

set_target_properties(lab1_default_image_HWAoIxfN PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${lab1_default_output_dir}")
target_link_libraries(lab1_default_image_HWAoIxfN PRIVATE ${lab1_default_default_AVR_GCC_FILE_TYPE_link})

#Add objcopy steps
lab1_default_objcopy_ihex_rule(lab1_default_image_HWAoIxfN)
lab1_default_objcopy_eep_rule(lab1_default_image_HWAoIxfN)
lab1_default_objcopy_lss_rule(lab1_default_image_HWAoIxfN)
lab1_default_objcopy_srec_rule(lab1_default_image_HWAoIxfN)
lab1_default_objcopy_sig_rule(lab1_default_image_HWAoIxfN)
# Add the link options from the rule file.
lab1_default_link_rule( lab1_default_image_HWAoIxfN)


