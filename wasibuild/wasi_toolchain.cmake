SET(CMAKE_C_COMPILER   clang)
SET(CMAKE_FIND_ROOT_PATH ${CMAKE_CURRENT_LIST_DIR}/wasi-sdk-20.0/share/wasi-sysroot/)
SET(CMAKE_SYSROOT ${CMAKE_CURRENT_LIST_DIR}/wasi-sdk-20.0/share/wasi-sysroot/)
set(CMAKE_C_FLAGS "--target=wasm32-wasi -D_WASI_EMULATED_MMAN -lwasi-emulated-mman ${CMAKE_C_FLAGS}")

set(CMAKE_C_STANDARD_INCLUDE_DIRECTORIES "${CMAKE_SYSROOT}/include")

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_AR "llvm-ar" CACHE FILEPATH "llvm-ar")
set(CMAKE_RANLIB "llvm-ranlib" CACHE FILEPATH "llvm-ranlib")

