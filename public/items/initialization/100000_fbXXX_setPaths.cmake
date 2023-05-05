# pacman -S btyacc
# pacman -S sed
# pacman -S base-devel --needed

# // pacman -S mingw-w64-x86_64-libiconv
# // pacman -S mingw-w64-x86_64-iconv
# // pacman -S mingw-w64-clang-x86_64-libiconv
# // pacman -S libiconv-devel

#set(CMAKE_BINARY_DIR  ${CMAKE_SOURCE_DIR}/native/build)


# # Include project but remove all tartgets
# ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/deps/zlib EXCLUDE_FROM_ALL)

# # Use only specific one target
# ADD_DEPENDENCIES(MyProject zlibstatic)

# # Include dirs from zlib source directory and from output directory becuse it generates some headers
# TARGET_INCLUDE_DIRECTORIES(MyProject PRIVATE
#     ${CMAKE_CURRENT_SOURCE_DIR}/deps/zlib
#     ${CMAKE_CURRENT_BINARY_DIR}/deps/zlib
# )

# # Just to create beautiful structure in project tree
# SET_PROPERTY(TARGET zlibstatic PROPERTY FOLDER Deps)

# # Link after all
# TARGET_LINK_LIBRARIES(MyProject zlibstatic)



