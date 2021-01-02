# Autogenerated wrapper script for SDPA_jll for x86_64-w64-mingw32-libgfortran5-cxx03
export libsdpa, libsdpawrap, sdpa

using libcxxwrap_julia_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("SDPA")
JLLWrappers.@declare_library_product(libsdpa, "libsdpa-0.dll")
JLLWrappers.@declare_library_product(libsdpawrap, "libsdpawrap.dll")
JLLWrappers.@declare_executable_product(sdpa)
function __init__()
    JLLWrappers.@generate_init_header(libcxxwrap_julia_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libsdpa,
        "bin\\libsdpa-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsdpawrap,
        "bin\\libsdpawrap.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        sdpa,
        "bin\\sdpa.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
