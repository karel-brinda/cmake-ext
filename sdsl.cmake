include(ExternalProject)

set(sdsl_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/sdsl-prefix)
set(sdsl_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/sdsl-install)

ExternalProject_Add(sdsl
    PREFIX ${sdsl_PREFIX}
    GIT_REPOSITORY "https://github.com/simongog/sdsl-lite"
    GIT_TAG "0a7ab5856b91ff798352c8343835ed208d59f077" # works well with clang
    INSTALL_DIR ${sdsl_INSTALL}
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 1
    CMAKE_ARGS
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${sdsl_INSTALL}
)

include_directories(${sdsl_INSTALL}/include)
set(sdsl_LIB ${sdsl_INSTALL}/lib/libsdsl.a ${sdsl_INSTALL}/lib/libdivsufsort.a ${sdsl_INSTALL}/lib/libdivsufsort64.a)

