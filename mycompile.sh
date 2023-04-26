CROSS_COMPILE=arm-linux-gnueabihf-
export CROSS_COMPILE
# check if CROSS_COMPILE is set
if [ -z "$CROSS_COMPILE" ]; then
	echo "CROSS_COMPILE is not set"
	exit 1
else
	echo "CROSS_COMPILE is set to $CROSS_COMPILE"
fi
# make uboot for bananapi m2 zero
make bananapi_m2_zero_defconfig
make all -j4
