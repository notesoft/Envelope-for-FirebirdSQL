
if (enIsMSW AND enIsClang)

    set(CLANG ON) 
    set(enLLNM_DIR "C:/TOOLSET/LLVM")

    include_directories("D:/source/contribution/Envelope-for-GoogleRE2/native")
    link_directories("C:/TOOLSET/COMMON")
    link_directories("${enLLNM_DIR}/lib/clang/16/lib/windows")
    link_directories("D:/source/contribution/Envelope-for-GoogleRE2/build/native")

    add_definitions( "-mcrc32")
    add_definitions( "-DNM_EXPORT=__declspec(dllexport)")
 
    set(enFirebirdDLLExportDEF "-Wl,/DEF:${CMAKE_CURRENT_SOURCE_DIR}/native/builds/win32/defs/firebird.def")
    set(LIB_clang_rt_builtins_x86_64 "${enLLNM_DIR}/lib/clang/16/lib/windows/clang_rt.builtins-x86_64.lib")
endif()

