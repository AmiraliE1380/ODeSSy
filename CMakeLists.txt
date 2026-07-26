cmake_minimum_required(VERSION 3.16)
project(OraclePass)

# 1. Find LLVM
find_package(LLVM REQUIRED CONFIG)
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# 2. Build standard CMake shared library (bypassing LLVM's strict macros)
add_library(OraclePass MODULE
    OraclePass/OraclePass.cpp
    OraclePass/Z3Encoder.cpp
    OraclePass/FactEncoder.cpp
)

# 3. Force it to be a .so file without the "lib" prefix 
# (so it outputs OraclePass.so instead of libOraclePass.so)
set_target_properties(OraclePass PROPERTIES
    PREFIX ""
    SUFFIX ".so"
)

# 4. Link the Z3 Theorem Prover (portable: Homebrew on macOS, system on Linux)
find_path(Z3_INCLUDE_DIR z3++.h
    HINTS /opt/homebrew/include /usr/local/include /usr/include)
find_library(Z3_LIBRARY NAMES z3
    HINTS /opt/homebrew/lib /usr/local/lib /usr/lib /usr/lib/x86_64-linux-gnu)
if(NOT Z3_INCLUDE_DIR OR NOT Z3_LIBRARY)
    message(FATAL_ERROR "Z3 not found (z3++.h / libz3)")
endif()
message(STATUS "Z3 include: ${Z3_INCLUDE_DIR}  lib: ${Z3_LIBRARY}")
target_include_directories(OraclePass PRIVATE ${Z3_INCLUDE_DIR})
target_link_libraries(OraclePass PRIVATE ${Z3_LIBRARY})

# 5. macOS: pass plugins resolve LLVM symbols from the host `opt` at load
# time; without this the Mach-O linker errors on the undefined LLVM symbols
# that Linux tolerates by default.
if(APPLE)
    target_link_options(OraclePass PRIVATE -undefined dynamic_lookup)
endif()

