# Autogenerated wrapper script for Xorg_libXau_jll for armv7l-linux-gnueabihf
export libXau

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libXau`
const libXau_splitpath = ["lib", "libXau.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXau_path = ""

# libXau-specific global declaration
# This will be filled out by __init__()
libXau_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXau = "libXau.so.6"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_libXau")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libXau_path = normpath(joinpath(artifact_dir, libXau_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXau_handle = dlopen(libXau_path)
    push!(LIBPATH_list, dirname(libXau_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

