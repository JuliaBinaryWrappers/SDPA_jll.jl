# `SDPA_jll.jl` (v7.3.8+1)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl). The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/2e077c7f73ec98448f6e918ce15d462294560870/S/SDPA/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://juliapackaging.github.io/BinaryBuilder.jl/dev/jll/).

## Sources

The tarballs for `SDPA_jll.jl` have been built from these sources:

* compressed archive: https://sourceforge.net/projects/sdpa/files/sdpa/sdpa_7.3.8.tar.gz (SHA256 checksum: `c7541333da2f0bb2d18e90dbf758ac7cc099f3f7da3f256b284b0725f96d4117`)
* files in directory, relative to originating `build_tarballs.jl`: [`./bundled`](https://github.com/JuliaPackaging/Yggdrasil/tree/2e077c7f73ec98448f6e918ce15d462294560870/S/SDPA/bundled)

## Platforms

`SDPA_jll.jl` is available for the following platforms:

* `Linux(:aarch64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`aarch64-linux-gnu-libgfortran4-cxx11`)
* `Linux(:armv7l, libc=:glibc, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`armv7l-linux-gnueabihf-libgfortran4-cxx11`)
* `Linux(:i686, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`i686-linux-gnu-libgfortran4-cxx11`)
* `Windows(:i686, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`i686-w64-mingw32-libgfortran4-cxx11`)
* `MacOS(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`x86_64-apple-darwin14-libgfortran4-cxx11`)
* `Linux(:x86_64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`x86_64-linux-gnu-libgfortran4-cxx11`)
* `FreeBSD(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`x86_64-unknown-freebsd11.1-libgfortran4-cxx11`)
* `Windows(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0", cxxstring_abi=:cxx11))` (`x86_64-w64-mingw32-libgfortran4-cxx11`)

## Dependencies

The following JLL packages are required by `SDPA_jll.jl`:

* [`CompilerSupportLibraries_jll`](https://github.com/JuliaBinaryWrappers/CompilerSupportLibraries_jll.jl)
* [`OpenBLAS32_jll`](https://github.com/JuliaBinaryWrappers/OpenBLAS32_jll.jl)
* [`libcxxwrap_julia_jll`](https://github.com/JuliaBinaryWrappers/libcxxwrap_julia_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `libsdpa`
* `LibraryProduct`: `libsdpawrap`
* `ExecutableProduct`: `sdpa`
