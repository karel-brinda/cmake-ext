set(htslib_PREFIX ${CMAKE_BINARY_DIR}/contrib/htslib-prefix)
set(htslib_INSTALL ${CMAKE_BINARY_DIR}/contrib/htslib-install)

if (CMAKE_GENERATOR STREQUAL "Unix Makefiles")
    set(MAKE_COMMAND "$(MAKE)")
else()
    find_program(MAKE_COMMAND NAMES make gmake)
endif()

ExternalProject_Add(htslib
    PREFIX ${htslib_PREFIX}
    GIT_REPOSITORY "https://github.com/samtools/htslib.git"
    GIT_TAG "1.3"
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 1
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${MAKE_COMMAND} lib-static
    INSTALL_COMMAND ${MAKE_COMMAND} install prefix=${htslib_INSTALL}
    LOG_DOWNLOAD ON
    LOG_CONFIGURE ON
    LOG_BUILD ON 
    )

add_dependencies(htslib zlib)
include_directories(${htslib_INSTALL}/include)
set(htslib_LIB ${htslib_INSTALL}/lib/libhts.a)
