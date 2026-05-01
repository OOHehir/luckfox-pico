# luckfox-pico — custom overlay

This repo is a snapshot of the upstream [LuckFox Pico SDK](https://github.com/LuckfoxTECH/luckfox-pico) with the additions listed below. For SDK installation, board selection, and build instructions, see the [upstream README](https://github.com/LuckfoxTECH/luckfox-pico/blob/main/README.md).

## What's added here

- **Slint Rust example app** — Buildroot package at `sysdrv/source/buildroot/buildroot-2023.02.6/package/hello_world_slint_rust/` (`Config.in` + `hello_world_slint_rust.mk`), registered in the parent `package/Config.in`.
- **LF40-480480-ARK panel support** — DTSI changes in `sysdrv/source/kernel/arch/arm/boot/dts/rv1106-luckfox-pico-ultra-ipc.dtsi` and `sysdrv/source/kernel/display.config` for the 480×480 round panel on the Pico Ultra IPC.
- **cjson CMake compatibility patch** — `sysdrv/source/buildroot/buildroot-2023.02.6/package/cjson/0001-cjson-require-cmake-3.5.patch` (newer CMake refuses minimums below 3.5).
- **CMake minimum-version bumps** — bulk update across `media/`, `project/app/`, and `sysdrv/source/mcu/rt-thread/` `CMakeLists.txt` files for the same reason.

---

Built by Owen O'Hehir — embedded Linux, Yocto, IoT & Matter consulting at [electronicsconsult.com](https://electronicsconsult.com). Open to new projects worldwide.
