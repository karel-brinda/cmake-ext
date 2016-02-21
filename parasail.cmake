include(ExternalProject)

set(parasail_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/parasail-prefix)
set(parasail_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/parasail-install)

ExternalProject_Add(parasail
    PREFIX ${parasail_PREFIX}
    GIT_REPOSITORY "https://github.com/jeffdaily/parasail"
    #GIT_TAG "tag"
    UPDATE_COMMAND ""
    INSTALL_DIR ${parasail_INSTALL}
    CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${parasail_INSTALL}
)

include_directories(${parasail_INSTALL}/include)
set(parasail_LIB ${parasail_INSTALL}/lib/libparasail.a)
