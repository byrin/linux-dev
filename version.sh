#!/bin/sh
#
ARCH=$(uname -m)

config="multi_v7_defconfig"

build_prefix="-armv7-devel-r"
branch_prefix="v"
branch_postfix=".x"

#arm
KERNEL_ARCH=arm
#toolchain="gcc_linaro_eabi_4_8"
#toolchain="gcc_linaro_eabi_4_9"
#toolchain="gcc_linaro_eabi_5"
#toolchain="gcc_linaro_eabi_6"
#toolchain="gcc_linaro_eabi_7"
#toolchain="gcc_linaro_gnueabi_4_6"
#toolchain="gcc_linaro_gnueabihf_4_7"
#toolchain="gcc_linaro_gnueabihf_4_8"
#toolchain="gcc_linaro_gnueabihf_4_9"
#toolchain="gcc_linaro_gnueabihf_5"
#toolchain="gcc_linaro_gnueabihf_6"
#toolchain="gcc_linaro_gnueabihf_7"
toolchain="gcc_arm_gnueabihf_8"
#arm64
#KERNEL_ARCH=arm64
#toolchain="gcc_linaro_aarch64_gnu_5"
#toolchain="gcc_linaro_aarch64_gnu_6"
#toolchain="gcc_linaro_aarch64_gnu_7"

#Kernel
KERNEL_REL=4.19
KERNEL_TAG=${KERNEL_REL}
kernel_rt=".X-rtY"
#Kernel Build
BUILD=${build_prefix}2

#v4.X-rcX + upto SHA
prev_KERNEL_SHA="746bb4ed6d626f3f9e431a7f9b20504538e62ded"
KERNEL_SHA="343a9f35409b68b6de66ecd0db90a277aee90ec2"

#git branch
#BRANCH="${branch_prefix}${KERNEL_REL}${branch_postfix}"

DISTRO=xross
DEBARCH=armhf
#
