CMake external projects
=======================

In this repository you can find configuration CMake files for several libraries.


GATB-Core
---------

Usage:

.. code-block:: cmake

	include(ExternalProject)
	include("cmake-ext/gatbcore.cmake")
	add_dependencies(yourproject gatbcore)
	target_link_libraries(yourproject ${gatbcore_LIB})

GitHub repository: https://github.com/GATB/gatb-core


Google Test
-----------

Usage:

.. code-block:: cmake

	include(ExternalProject)
	include("cmake-ext/googletest.cmake")
	target_link_libraries(yourproject ${googletest_LIB} 

GitHub repository: https://github.com/google/googletest


HTSlib
------

Usage:

.. code-block:: cmake

	include(ExternalProject)
	include("cmake-ext/htslib.cmake")
	add_dependencies(yourproject htslib)
	target_link_libraries(yourproject ${htslib_LIB})

GitHub repository: https://github.com/samtools/htslib


zlib
----

Usage:

.. code-block:: cmake

	include(ExternalProject)
	include("cmake-ext/zlib.cmake")
	add_dependencies(yourproject zlib)
	target_link_libraries(yourproject ${zlib_LIB})

GitHub repository: https://github.com/madler/zlib

