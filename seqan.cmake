include(ExternalProject)

set(seqan_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/seqan-prefix)
set(seqan_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/seqan-install)

ExternalProject_Add(seqan
    PREFIX ${seqan_PREFIX}
    GIT_REPOSITORY "https://github.com/seqan/seqan/"
    GIT_TAG "seqan-v2.1.0"
    INSTALL_DIR ${seqan_INSTALL}
    UPDATE_COMMAND ""
    CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${seqan_INSTALL}
        -DSEQAN_BUILD_SYSTEM=SEQAN_RELEASE_LIBRARY
)

include_directories(${seqan_INSTALL}/include)
