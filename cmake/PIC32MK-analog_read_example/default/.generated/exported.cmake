set(DEPENDENT_MP_BIN2HEXPIC32MK_analog_read_example_default_PYkDLCb3 "/opt/microchip/xc32/v5.00/bin/xc32-bin2hex")
set(DEPENDENT_DEPENDENT_TARGET_ELFPIC32MK_analog_read_example_default_PYkDLCb3 ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32MK-analog_read_example/default.elf)
set(DEPENDENT_TARGET_DIRPIC32MK_analog_read_example_default_PYkDLCb3 ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32MK-analog_read_example)
set(DEPENDENT_BYPRODUCTSPIC32MK_analog_read_example_default_PYkDLCb3 ${DEPENDENT_TARGET_DIRPIC32MK_analog_read_example_default_PYkDLCb3}/${sourceFileNamePIC32MK_analog_read_example_default_PYkDLCb3}.c)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRPIC32MK_analog_read_example_default_PYkDLCb3}/${sourceFileNamePIC32MK_analog_read_example_default_PYkDLCb3}.c
    COMMAND ${DEPENDENT_MP_BIN2HEXPIC32MK_analog_read_example_default_PYkDLCb3} --image ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32MK_analog_read_example_default_PYkDLCb3} --image-generated-c ${sourceFileNamePIC32MK_analog_read_example_default_PYkDLCb3}.c --image-generated-h ${sourceFileNamePIC32MK_analog_read_example_default_PYkDLCb3}.h --image-copy-mode ${modePIC32MK_analog_read_example_default_PYkDLCb3} --image-offset ${addressPIC32MK_analog_read_example_default_PYkDLCb3} 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRPIC32MK_analog_read_example_default_PYkDLCb3}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32MK_analog_read_example_default_PYkDLCb3})
add_custom_target(
    dependent_produced_source_artifactPIC32MK_analog_read_example_default_PYkDLCb3 
    DEPENDS ${DEPENDENT_TARGET_DIRPIC32MK_analog_read_example_default_PYkDLCb3}/${sourceFileNamePIC32MK_analog_read_example_default_PYkDLCb3}.c
    )
