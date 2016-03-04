include(ExternalProject)

set(sdsl_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/sdsl-prefix)
set(sdsl_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/sdsl-install)

ExternalProject_Add(sdsl
    PREFIX ${sdsl_PREFIX}
    GIT_REPOSITORY "https://github.com/simongog/sdsl-lite"
    GIT_TAG "v2.0.3"
    INSTALL_DIR ${sdsl_INSTALL}
    UPDATE_COMMAND ""
    CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${sdsl_INSTALL}
)

include_directories(${sdsl_INSTALL}/include)
set(sdsl_LIB ${sdsl_INSTALL}/lib/libgtest.a)

