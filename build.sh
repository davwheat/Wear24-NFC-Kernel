export CROSS_COMPILE=$(pwd)/toolchain/bin/arm-eabi-
export ARCH=arm && export SUBARCH=arm

mkdir -p out

make O=out clean
#make O=out mrproper
make O=out msm8909w-perf
make O=out -j$(nproc --all)