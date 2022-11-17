# Autogenerated wrapper script for SDPA_jll for aarch64-apple-darwin-libgfortran5-julia_version+1.10.0
export libsdpa, libsdpawrap, sdpa

using libcxxwrap_julia_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("SDPA")
JLLWrappers.@declare_library_product(libsdpa, "@rpath/libsdpa.0.dylib")
JLLWrappers.@declare_library_product(libsdpawrap, "@rpath/libsdpawrap.dylib")
JLLWrappers.@declare_executable_product(sdpa)
function __init__()
    JLLWrappers.@generate_init_header(libcxxwrap_julia_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libsdpa,
        "lib/libsdpa.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsdpawrap,
        "lib/libsdpawrap.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        sdpa,
        "bin/sdpa",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
