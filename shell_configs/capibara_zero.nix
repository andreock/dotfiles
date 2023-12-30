let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "platformio_development";
  buildInputs = with pkgs; [
    # Platformio deps
    platformio
    git
    python3
    # Documentation deps
    nodejs
    fritzing
    # Neovim deps
    vscode
  ];
  shellHook = ''
    # fixes library issues
    LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib64/
    
    # Patch xtensa toolchain
    for f in ~/.platformio/packages/toolchain-xtensa-esp32s3/bin/*; do patchelf --set-interpreter ${pkgs.stdenv.cc.bintools.dynamicLinker} $f; done;
    # Very dirty patching here but it works great
    for f in ~/.platformio/packages/toolchain-xtensa-esp32s3/libexec/gcc/xtensa-esp32s3-elf/8.4.0/*; do patchelf --set-interpreter ${pkgs.stdenv.cc.bintools.dynamicLinker} $f; done;
    # Patch xtensa ELF
    for f in ~/.platformio/packages/toolchain-xtensa-esp32s3/xtensa-esp32s3-elf/bin/*; do patchelf --set-interpreter ${pkgs.stdenv.cc.bintools.dynamicLinker} $f; done;
    '';
}    
