set(gatbcore_PREFIX ${CMAKE_BINARY_DIR}/contrib/gatbcore-prefix)
set(gatbcore_INSTALL ${CMAKE_BINARY_DIR}/contrib/gatbcore-install)

ExternalProject_Add(gatbcore
	PREFIX ${gatbcore_PREFIX}
	GIT_REPOSITORY "https://github.com/GATB/gatb-core.git"
	#GIT_TAG "tag"
	UPDATE_COMMAND ""
	BUILD_IN_SOURCE 0
	INSTALL_DIR ${gatbcore_INSTALL}
	CMAKE_ARGS -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
	-DCMAKE_INSTALL_PREFIX=${gatbcore_INSTALL}
	SOURCE_DIR "${gatbcore_PREFIX}/src/gatb-core"
	CMAKE_ARGS "-DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}"
	LOG_DOWNLOAD ON
    LOG_CONFIGURE ON
	LOG_BUILD ON 
	)


include_directories(${gatbcore_INSTALL}/include)
set(gatbcore_LIB ${gatbcore_INSTALL}/lib/libgatbcore.a)
