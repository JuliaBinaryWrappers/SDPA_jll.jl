# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SDPA_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SDPA")
JLLWrappers.@generate_main_file("SDPA", UUID("7fc90fd6-dbef-5a6a-93f8-169f2a2e705b"))
end  # module SDPA_jll
