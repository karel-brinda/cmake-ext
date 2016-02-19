set(eastl_PREFIX ${CMAKE_BINARY_DIR}/cmake-ext/eastl-prefix)
set(eastl_INSTALL ${CMAKE_BINARY_DIR}/cmake-ext/eastl-install)

ExternalProject_Add(eastl
    PREFIX ${eastl_PREFIX}
    GIT_REPOSITORY "https://github.com/electronicarts/EASTL"
    INSTALL_DIR ${eastl_INSTALL}
    CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_INSTALL_PREFIX=${eastl_INSTALL}
    #INSTALL_COMMAND ""
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory
        <SOURCE_DIR> ${eastl_INSTALL}
)

include_directories(${eastl_INSTALL}/include)
set(eastl_LIB ${eastl_INSTALL}/lib/libEASTL.a)
