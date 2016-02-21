CMake external projects
=======================

This repository contains configuration CMake files for several popular libraries, which can be easily included as `external projects`_. To use them in your project, please copy or clone this directory into your project directory and add the corresponding lines to your ``CMakeLists.txt``.

.. _external projects: https://cmake.org/cmake/help/v3.5/module/ExternalProject.html

GATB-Core
---------

Usage:

.. code-block:: cmake

	include("cmake-ext/gatbcore.cmake")
	add_dependencies(yourproject gatbcore)
	target_link_libraries(yourproject ${gatbcore_LIB})

Web: https://www.gatb.fr/gatb-core

GitHub repository: https://github.com/GATB/gatb-core


Google Test
-----------

Usage:

.. code-block:: cmake

	include("cmake-ext/googletest.cmake")
	add_dependencies(yourproject googletest)
	target_link_libraries(yourproject ${googletest_LIB})

GitHub repository: https://github.com/google/googletest


HTSlib
------

Usage:

.. code-block:: cmake

	include("cmake-ext/htslib.cmake")
	add_dependencies(yourproject htslib)
	target_link_libraries(yourproject ${htslib_LIB})

Web: http://www.htslib.org

GitHub repository: https://github.com/samtools/htslib


klib
----

Usage:

.. code-block:: cmake

	include("cmake-ext/klib.cmake")
	add_dependencies(yourproject klib)

Web: http://attractivechaos.github.io/klib

GitHub repository: https://github.com/attractivechaos/klib


Parasail
--------

Usage:

.. code-block:: cmake

	include("cmake-ext/parasail.cmake")
	add_dependencies(yourproject parasail)
	target_link_libraries(yourproject ${parasail_LIB})

GitHub repository: https://github.com/jeffdaily/parasail


Seqan
-----

Usage:

.. code-block:: cmake

	include("cmake-ext/seqan.cmake")
	add_dependencies(yourproject seqan)

Web: http://www.seqan.de/

GitHub repository: https://github.com/seqan/seqan/


zlib
----

Usage:

.. code-block:: cmake

	include("cmake-ext/zlib.cmake")
	add_dependencies(yourproject zlib)
	target_link_libraries(yourproject ${zlib_LIB})

Web: http://zlib.net

GitHub repository: https://github.com/madler/zlib
