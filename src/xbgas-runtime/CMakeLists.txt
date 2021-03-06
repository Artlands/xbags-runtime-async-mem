#-- override the default compiler/assembler
set(CMAKE_C_COMPILER "${RISCV_ENV}/bin/riscv64-unknown-elf-gcc")
# message(STATUS "C compiler set to ${RISCV_ENV}/bin/riscv64-unknown-elf-gcc.")

set(CMAKE_ASM_COMPILER "${RISCV_ENV}/bin/riscv64-unknown-elf-gcc")
# message(STATUS "ASM compiler set to ${RISCV_ENV}/bin/riscv64-unknown-elf-gcc.")

#-- ensure we're using c11
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11")

set(XBGASSrcs
xbrtime.h
xbrtime-version.h
xbrtime-types.h
xbrtime-macros.h
xbrtime-alloc.h
xbrtime-api.h
xbrtime_init.c
xbrtime_ctor.c
xbrtime_alloc.c
xbrtime_util.c
xbrtime_api.c
xbrtime_barrier.c
xbrtime_util_asm.s
xbrtime_ctor_asm.s
xbrtime_api_asm.s
)

include_directories( . )
add_library( xbrtime STATIC ${XBGASSrcs})

install(TARGETS xbrtime DESTINATION lib)
install(DIRECTORY ./ DESTINATION include 
        FILES_MATCHING PATTERN "*.h*")

# EOF
