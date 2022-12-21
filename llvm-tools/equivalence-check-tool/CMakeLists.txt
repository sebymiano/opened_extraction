# Now build our tools
add_executable(equivalence-check EquivalenceCheck.cpp)

# Use C++11 to compile your pass (i.e., supply -std=c++11).
target_compile_features(equivalence-check PRIVATE cxx_range_for cxx_auto_type)

# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(equivalence-check PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)

# Find the libraries that correspond to the LLVM components
# that we wish to use
llvm_map_components_to_libnames(llvm_libs 
                                support 
                                core 
                                irreader
                                TransformUtils)

# Link against LLVM libraries
target_link_libraries(equivalence-check ${llvm_libs})