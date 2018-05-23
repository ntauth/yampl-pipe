##
# YAMPL-PIPE
#
if (WITH_PIPE_PLUGIN)
    add_library(yampl-pipe SHARED
            plugins/yampl-pipe/src/PipeSocketBase.cpp
            plugins/yampl-pipe/src/PipeSocketFactory.cpp
            ${YAMPL_PLUGIN_COMMON_SRCS}
    )

    target_include_directories(yampl-pipe PRIVATE plugins/yampl-pipe/include)

    set_target_properties(yampl-pipe
            PROPERTIES
            LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/plugins/yampl-shm"
    )

    install(TARGETS yampl-pipe
            LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/yampl/plugins/yampl-pipe
    )
endif()
