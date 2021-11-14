export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export TARGET=armv7a-linux-androideabi
export API=29
export SYSROOT=$TOOLCHAIN/sysroot

export PREFIX=$SYSROOT

make -C amadec CC="$TOOLCHAIN/bin/$TARGET$API-clang --sysroot $SYSROOT" AR=$TOOLCHAIN/bin/llvm-ar RANLIB=$TOOLCHAIN/bin/llvm-ranlib
