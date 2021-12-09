# if(BUILD_ALL_TESTING)
#     set(BUILD_INIT_TESTING "ON")
# endif()
set(BUILD_INIT_TESTING "ON")

add_subdirectory(init)
add_subdirectory(alloc)
add_subdirectory(barr)
add_subdirectory(xfer)