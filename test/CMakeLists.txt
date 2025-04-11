# Parent project does not export its library target, so this CML implicitly
# depends on being added from it, i.e. the testing is done only from the build
# tree and is not feasible from an install location

project(todo-dos-computeirosTests LANGUAGES CXX)

# ---- Dependencies ----

find_package(Catch2 REQUIRED)
include(Catch)

# ---- Tests ----

add_executable(todo-dos-computeiros_test source/todo-dos-computeiros_test.cpp)
target_link_libraries(
    todo-dos-computeiros_test PRIVATE
    todo-dos-computeiros_lib
    Catch2::Catch2WithMain
)
target_compile_features(todo-dos-computeiros_test PRIVATE cxx_std_20)

catch_discover_tests(todo-dos-computeiros_test)

# ---- End-of-file commands ----

add_folders(Test)
