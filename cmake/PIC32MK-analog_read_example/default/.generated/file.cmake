# The following variables contains the files used by the different stages of the build process.
set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assemble)
set_source_files_properties(${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
set_source_files_properties(${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assembleWithPreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/adc_lib.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/analog_read.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/aux_func.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/blink.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/pin_declaration.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/values.c")
set_source_files_properties(${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_compile_cpp)
set_source_files_properties(${PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_compile_cpp} PROPERTIES LANGUAGE CXX)
set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_link)
set(PIC32MK_analog_read_example_default_default_XC32_FILE_TYPE_bin2hex)
set(PIC32MK_analog_read_example_default_image_name "default.elf")
set(PIC32MK_analog_read_example_default_image_base_name "default")

# The output directory of the final image.
set(PIC32MK_analog_read_example_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/PIC32MK-analog_read_example")

# The full path to the final image.
set(PIC32MK_analog_read_example_default_full_path_to_image ${PIC32MK_analog_read_example_default_output_dir}/${PIC32MK_analog_read_example_default_image_name})
