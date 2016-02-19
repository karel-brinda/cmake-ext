cmake_minimum_required (VERSION 2.6)
project(yourproject)
add_executable(yourproject example.cpp)

include(ExternalProject)

include("cmake-ext/gatbcore.cmake")
add_dependencies(yourproject gatbcore)
target_link_libraries(yourproject ${gatbcore_LIB})

include("cmake-ext/googletest.cmake")
add_dependencies(yourproject googletest)
target_link_libraries(yourproject ${googletest_LIB})

include("cmake-ext/htslib.cmake")
add_dependencies(yourproject htslib)
target_link_libraries(yourproject ${htslib_LIB})

include("cmake-ext/klib.cmake")
add_dependencies(yourproject klib)

include("cmake-ext/zlib.cmake")
add_dependencies(yourproject zlib)
target_link_libraries(yourproject ${zlib_LIB})
