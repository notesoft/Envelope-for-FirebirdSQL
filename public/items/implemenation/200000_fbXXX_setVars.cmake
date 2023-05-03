
# dumpbin /ARCHIVEMEMBERS common.lib
# C:\TOOLSET\msVisualStudio\2022\Community\VC\Tools\MSVC\14.34.31933\bin\Hostx64\x64\dumpbin /ARCHIVEMEMBERS common.lib

# C:\TOOLSET\msVisualStudio\2022\Community\VC\Tools\MSVC\14.34.31933\bin\Hostx64\x64\dumpbin /EXPORTS D:\source\contribution\Envelope-for-FirebirdSQL\build\native\src\common.lib


link_directories("C:/TOOLSET/COMMON")
#link_directories("C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.34.31933/lib/x64")

#add_definitions( " -include  ${CMAKE_CURRENT_SOURCE_DIR}/native/src/yvalve/gds_proto.h ")



#C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\float.h
#include <unistd.h>

set(NM_MS_SDK_VER      10.0.22621.0)  
set(NM_MS_SDK_BIN_DIR      "C:/Program Files (x86)/Windows Kits/10/bin/${NM_MS_SDK_VER}")  
set(NM_MS_SDK_INCLUDE_DIR  "C:/Program Files (x86)/Windows Kits/10/Include/${NM_MS_SDK_VER}")  
set(NM_MS_SDK_X64_DIR      "${NM_MS_SDK_BIN_DIR}/x64")
set(enLLNM_DIR             "C:/TOOLSET/LLVM"               )


    #define NM_EXPORT __declspec(dllexport) 


include_directories("C:/Program Files (x86)/Windows Kits/10/Include/${NM_MS_SDK_VER}/ucrt")
include_directories("C:/Program Files (x86)/Windows Kits/10/Include/${NM_MS_SDK_VER}/shared")
include_directories("C:/Program Files (x86)/Windows Kits/10/Include/${NM_MS_SDK_VER}/um")
include_directories("C:/Program Files (x86)/Windows Kits/10/Include/${NM_MS_SDK_VER}/winrt")


# include_directories("C:/TOOLSET/COMMON")
include_directories("D:/source/contribution/Google-re2")

#add_definitions( " -include  unistd.h" )
# "-include D:/source/contribution/Envelope-for-FirebirdSQL/native/src/yvalve/gds_proto.h"

set(LINK_FLAGS "  " ) #  clang_rt.builtins-x86_64.lib 

if (enIsMSW AND enIsClang )

    set(CLANG ON) 
#    set(MINGW ON) 
    message("       MSVC ${MSVC}")
    message("      MINGW ${MINGW}")
    message("      CLANG ${CLANG}")
    
 
#    We can use the -Wl flag in clang to pass some comma-separated arguments to the linker.
#    DEF files can be specified using /DEF argument


   # add_definitions( " -DAPI_ROUTINE='__declspec(dllexport)' ")
    

#    set(CMAKE_C_FLAGS         "-Wall -Xclang -flto-visibility-public-std") 
#    set(CMAKE_CXX_FLAGS       "-Wall -Xclang -flto-visibility-public-std") 
#    set(CMAKE_CXX_FLAGS_DEBUG "-g -O0 -gno-column-info                  ") 
#    set(CMAKE_C_FLAGS_DEBUG   "-g -O0 -gno-column-info                  ") 

# "native\builds\win32\defs\firebird.def"

   # clang -shared structs.c -o structs.dll -Wl"/DEF:structs.def"

    set(enFirebirdDLLExportDEF "-Wl,/DEF:${CMAKE_CURRENT_SOURCE_DIR}/native/builds/win32/defs/firebird.def")
    set(CMAKE_C_FLAGS   " -mcrc32  " )
    set(CMAKE_CXX_FLAGS " -mcrc32  " ) # -Xlinker /implib:clang_rt.builtins-x86_64.lib 
    set(LIB_clang_rt_builtins_x86_64 "${enLLNM_DIR}/lib/clang/16/lib/windows/clang_rt.builtins-x86_64.lib")

endif()

#find_package(Iconv REQUIRED)
# target_link_libraries(${enProjectName} PRIVATE Iconv::Iconv)