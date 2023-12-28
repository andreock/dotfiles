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
    # fixes libstdc++ issues and libgl.so issues
    LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib64/
    patchelf --set-interpreter ${pkgs.stdenv.cc.bintools.dynamicLinker} ~/.platformio/packages/toolchain-xtensa-esp32s3/bin/xtensa-esp32s3-elf-gcc
    '';
}    
