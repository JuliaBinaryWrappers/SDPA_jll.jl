# Autogenerated wrapper script for SDPA_jll for i686-linux-gnu-cxx11
export libsdpa, libsdpawrap, sdpa

using libcxxwrap_julia_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libsdpa`
const libsdpa_splitpath = ["lib", "libsdpa.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdpa_path = ""

# libsdpa-specific global declaration
# This will be filled out by __init__()
libsdpa_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdpa = "libsdpa.so.0"


# Relative path to `libsdpawrap`
const libsdpawrap_splitpath = ["lib", "libsdpawrap.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdpawrap_path = ""

# libsdpawrap-specific global declaration
# This will be filled out by __init__()
libsdpawrap_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdpawrap = "libsdpawrap.so"


# Relative path to `sdpa`
const sdpa_splitpath = ["bin", "sdpa"]

# This will be filled out by __init__() for all products, as it must be done at runtime
sdpa_path = ""

# sdpa-specific global declaration
function sdpa(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(sdpa_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SDPA")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (libcxxwrap_julia_jll.PATH_list, OpenBLAS32_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (libcxxwrap_julia_jll.LIBPATH_list, OpenBLAS32_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libsdpa_path = normpath(joinpath(artifact_dir, libsdpa_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdpa_handle = dlopen(libsdpa_path)
    push!(LIBPATH_list, dirname(libsdpa_path))

    global libsdpawrap_path = normpath(joinpath(artifact_dir, libsdpawrap_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdpawrap_handle = dlopen(libsdpawrap_path)
    push!(LIBPATH_list, dirname(libsdpawrap_path))

    global sdpa_path = normpath(joinpath(artifact_dir, sdpa_splitpath...))

    push!(PATH_list, dirname(sdpa_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

