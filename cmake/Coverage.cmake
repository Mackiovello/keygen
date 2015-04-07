
message(STATUS "Code coverage ${COVERAGE}")

if( ${COVERAGE} )
    find_program(GCOV_EXEC gcov)

    if( NOT GCOV_EXEC )
        message(FATAL_ERROR "Executable for gcov not found!")
    endif()

    set(GCOV_FLAGS "-ftest-coverage -fprofile-arcs")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCOV_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCOV_FLAGS}")

endif()