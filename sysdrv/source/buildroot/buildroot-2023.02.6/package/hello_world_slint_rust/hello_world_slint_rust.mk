################################################################################
# hello_world_slint_rust
################################################################################

HELLO_WORLD_SLINT_RUST_VERSION = main
HELLO_WORLD_SLINT_RUST_SITE = https://github.com/OOHehir/hello_world_slint_rust.git
HELLO_WORLD_SLINT_RUST_SITE_METHOD = git

HELLO_WORLD_SLINT_RUST_LICENSE = MIT
HELLO_WORLD_SLINT_RUST_LICENSE_FILES = LICENSE

# --------------------------------------------------------------------------
# Dependencies required for backend-linuxkms-noseat + renderer-software
# --------------------------------------------------------------------------
HELLO_WORLD_SLINT_RUST_DEPENDENCIES = eudev libinput libxkbcommon mesa3d libdrm

HELLO_WORLD_SLINT_RUST_TARGET = armv7-unknown-linux-gnueabihf

# --------------------------------------------------------------------------
# Build
# --------------------------------------------------------------------------
define HELLO_WORLD_SLINT_RUST_BUILD_CMDS
	cd $(@D) && \
	PKG_CONFIG_ALLOW_CROSS=1 \
	PKG_CONFIG_PATH="$(STAGING_DIR)/usr/lib/pkgconfig" \
	PKG_CONFIG_SYSROOT_DIR="$(STAGING_DIR)" \
	cargo build --release --target=$(HELLO_WORLD_SLINT_RUST_TARGET)
endef

# --------------------------------------------------------------------------
# Install
# --------------------------------------------------------------------------
define HELLO_WORLD_SLINT_RUST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 \
		$(@D)/target/$(HELLO_WORLD_SLINT_RUST_TARGET)/release/hello_world_slint_rust \
		$(TARGET_DIR)/usr/bin/hello_world_slint_rust
endef

$(eval $(generic-package))

