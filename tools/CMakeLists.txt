############################################################
# CMakeLists for the tools of ratpac

if(RATPAC_BONSAI)
        add_subdirectory(bonsai)
        list(APPEND TOOLS bonsai)
endif()
# add_subdirectory(visualizer)
if(RATPAC_RAT)
        add_subdirectory(rat)
        list(APPEND TOOLS rat)
endif()
if(RATPAC_ROOT)
        add_subdirectory(root)
        list(APPEND TOOLS root)
endif()

set_target_properties(${TOOLS}
    PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${RATPAC_BINARY_DIR}
        ARCHIVE_OUTPUT_DIRECTORY ${RATPAC_LIBRARY_DIR}
        LIBRARY_OUTPUT_DIRECTORY ${RATPAC_LIBRARY_DIR})
