include(ExternalProject)

set(ssw_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/ssw-prefix)
set(ssw_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/ssw-install)

if (CMAKE_GENERATOR STREQUAL "Unix Makefiles")
    set(MAKE_COMMAND "$(MAKE)")
else()
    find_program(MAKE_COMMAND NAMES make gmake)
endif()

ExternalProject_Add(ssw
    PREFIX ${ssw_PREFIX}
    GIT_REPOSITORY "https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library"
    #GIT_TAG "513bef"
    BUILD_IN_SOURCE 1
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND "${MAKE_COMMAND}" -C src
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory
        <SOURCE_DIR>/src ${ssw_INSTALL}
)

include_directories(${ssw_INSTALL})
set(ssw_LIB ${ssw_INSTALL}/ssw.o)
