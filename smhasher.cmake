include(ExternalProject)

set(smhasher_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/smhasher-prefix)
set(smhasher_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/smhasher-install)

ExternalProject_Add(smhasher
    PREFIX ${smhasher_PREFIX}
    GIT_REPOSITORY "https://github.com/aappleby/smhasher"
    GIT_TAG "f1a03501"
    UPDATE_COMMAND ""
    INSTALL_COMMAND ""
    #INSTALL_DIR ${smhasher_INSTALL}
    #INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory
    #    <SOURCE_DIR> ${smhasher_INSTALL}
    CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${smhasher_INSTALL}
)

include_directories(${smhasher_prefix})
set(smhasher_LIB ${smhasher_prefix}/libSMHasherSupport.a)
