include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(lab3_1_default_library_list )

# Handle files with suffix s, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_assemble)
add_library(lab3_1_default_default_AVR_GCC_assemble OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_assemble})
    lab3_1_default_default_AVR_GCC_assemble_rule(lab3_1_default_default_AVR_GCC_assemble)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_assemble>")

endif()

# Handle files with suffix S, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_assembleWithPreprocess)
add_library(lab3_1_default_default_AVR_GCC_assembleWithPreprocess OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_assembleWithPreprocess})
    lab3_1_default_default_AVR_GCC_assembleWithPreprocess_rule(lab3_1_default_default_AVR_GCC_assembleWithPreprocess)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_assembleWithPreprocess>")

endif()

# Handle files with suffix [cC], for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_compile)
add_library(lab3_1_default_default_AVR_GCC_compile OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_compile})
    lab3_1_default_default_AVR_GCC_compile_rule(lab3_1_default_default_AVR_GCC_compile)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_compile>")

endif()

# Handle files with suffix cpp, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_compile_cpp)
add_library(lab3_1_default_default_AVR_GCC_compile_cpp OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_compile_cpp})
    lab3_1_default_default_AVR_GCC_compile_cpp_rule(lab3_1_default_default_AVR_GCC_compile_cpp)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_compile_cpp>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_ihex)
add_library(lab3_1_default_default_AVR_GCC_objcopy_ihex OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_ihex})
    lab3_1_default_default_AVR_GCC_objcopy_ihex_rule(lab3_1_default_default_AVR_GCC_objcopy_ihex)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_objcopy_ihex>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_eep)
add_library(lab3_1_default_default_AVR_GCC_objcopy_eep OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_eep})
    lab3_1_default_default_AVR_GCC_objcopy_eep_rule(lab3_1_default_default_AVR_GCC_objcopy_eep)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_objcopy_eep>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_lss)
add_library(lab3_1_default_default_AVR_GCC_objcopy_lss OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_lss})
    lab3_1_default_default_AVR_GCC_objcopy_lss_rule(lab3_1_default_default_AVR_GCC_objcopy_lss)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_objcopy_lss>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_srec)
add_library(lab3_1_default_default_AVR_GCC_objcopy_srec OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_srec})
    lab3_1_default_default_AVR_GCC_objcopy_srec_rule(lab3_1_default_default_AVR_GCC_objcopy_srec)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_objcopy_srec>")

endif()

# Handle files with suffix elf, for group default-AVR-GCC
if(lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_sig)
add_library(lab3_1_default_default_AVR_GCC_objcopy_sig OBJECT ${lab3_1_default_default_AVR_GCC_FILE_TYPE_objcopy_sig})
    lab3_1_default_default_AVR_GCC_objcopy_sig_rule(lab3_1_default_default_AVR_GCC_objcopy_sig)
    list(APPEND lab3_1_default_library_list "$<TARGET_OBJECTS:lab3_1_default_default_AVR_GCC_objcopy_sig>")

endif()


# Main target for this project
add_executable(lab3_1_default_image_bbJ8AUxN ${lab3_1_default_library_list})

set_target_properties(lab3_1_default_image_bbJ8AUxN PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${lab3_1_default_output_dir}")
target_link_libraries(lab3_1_default_image_bbJ8AUxN PRIVATE ${lab3_1_default_default_AVR_GCC_FILE_TYPE_link})

#Add objcopy steps
lab3_1_default_objcopy_ihex_rule(lab3_1_default_image_bbJ8AUxN)
lab3_1_default_objcopy_eep_rule(lab3_1_default_image_bbJ8AUxN)
lab3_1_default_objcopy_lss_rule(lab3_1_default_image_bbJ8AUxN)
lab3_1_default_objcopy_srec_rule(lab3_1_default_image_bbJ8AUxN)
lab3_1_default_objcopy_sig_rule(lab3_1_default_image_bbJ8AUxN)
# Add the link options from the rule file.
lab3_1_default_link_rule( lab3_1_default_image_bbJ8AUxN)


