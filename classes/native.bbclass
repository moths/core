#
PACKAGE_DIR_CROSS		= ""
PACKAGE_DIR_SYSROOT_ARCH	= "${PACKAGE_DIR_NATIVE_ARCH}"
PACKAGE_DIR_SYSROOT_MACHINE	= "${PACKAGE_DIR_NATIVE_MACHINE}"
#
TARGET_PACKAGE_OUTPUT_ARCH	= "${PACKAGE_DIR_NATIVE_ARCH}"
TARGET_PACKAGE_OUTPUT_MACHINE	= "${PACKAGE_DIR_NATIVE_MACHINE}"
#
STAGE_PACKAGE_OUTPUT_ARCH	= "${PACKAGE_DIR_NATIVE_ARCH}"
STAGE_PACKAGE_OUTPUT_MACHINE	= "${PACKAGE_DIR_NATIVE_MACHINE}"
#
TMP_SUBPATH_ARCH		 = "native/${BUILD_ARCH}"
TMP_SUBPATH_MACHINE		 = "native/${BUILD_ARCH}--${MACHINE}"

# No default packages
PACKAGES = ""

# When this class has packaging enabled, setting RPROVIDES becomes unnecessary.
#RPROVIDES = "${PN}"

# Set host=build
HOST_ARCH		= "${BUILD_ARCH}"
HOST_CPU		= "${BUILD_CPU}"
HOST_OS			= "${BUILD_OS}"
HOST_CPU_CROSS		= "${BUILD_CPU_CROSS}"
HOST_CROSS		= "${BUILD_CROSS}"
HOST_CC_ARCH		= "${BUILD_CC_ARCH}"
HOST_EXEEXT		= "${BUILD_EXEEXT}"
HOST_PREFIX		= "${BUILD_PREFIX}"

# and target=build for architecture triplet build/build/build
TARGET_ARCH		= "${BUILD_ARCH}"
TARGET_CPU		= "${BUILD_CPU}"
TARGET_OS		= "${BUILD_OS}"
TARGET_CPU_CROSS	= "${BUILD_CPU_CROSS}"
TARGET_CROSS		= "${BUILD_CROSS}"
TARGET_CC_ARCH		= "${BUILD_CC_ARCH}"
TARGET_EXEEXT		= "${BUILD_EXEEXT}"
TARGET_PREFIX		= "${BUILD_PREFIX}"

do_stage () {
	if [ "${AUTOTOOLS_NATIVE_STAGE_INSTALL}" != "1" ]
	then
		oe_runmake install
	else
		autotools_stage_all
	fi
}

do_install () {
	true
}

#PKG_CONFIG_PATH .= "${EXTRA_NATIVE_PKGCONFIG_PATH}"
#PKG_CONFIG_SYSROOT_DIR = ""
