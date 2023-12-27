let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "c-clang-cpp";
  stdenv = pkgs.clangStdenv;  
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
  buildInputs = with pkgs; [
#    gcc
    neovim
    git
    glibc
#    clang
stdenv.cc
      stdenv.cc.libc stdenv.cc.libc_dev
  ];
}
