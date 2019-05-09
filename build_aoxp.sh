#!/bin/bash

echo
echo "Clean Build Directory"
echo 

make clean && make mrproper
rm -rf out

echo
echo "Make Directory"
echo

mkdir -p out

echo
echo "Set DEFCONFIG"
echo 
make O=out aoxp_defconfig

echo
echo "Build The Kernel"
echo 

make O=out -j4
