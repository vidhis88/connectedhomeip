#!/bin/bash

CURRENT_SYSTEM=$1
ANDROID_ARCH=$2

./bootstrap
cd ..
mkdir android-builds
cd android-builds
mkdir builds-$ANDROID_ARCH
cd builds-$ANDROID_ARCH

export TOOLCHAIN=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/$CURRENT_SYSTEM
export TARGET=$ANDROID_ARCH
export export API=21
export AS=$TOOLCHAIN/bin/$TARGET-as
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
export LD=$TOOLCHAIN/bin/$TARGET-ld
export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
export STRIP=$TOOLCHAIN/bin/$TARGET-strip
export JNI_INCLUDE_DIRS=$ANDROID_NDK_HOME/sysroot/usr/include

../../connectedhomeip/configure --host=$TARGET --with-crypto=mbedtls --enable-tests=no --enable-shared --with-device-layer=none --with-chip-project-includes="../../connectedhomeip/config/android"

make
