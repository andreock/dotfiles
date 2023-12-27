let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "gpt";
 # stdenv = pkgs.clangStdenv;  
 # LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
  buildInputs = with pkgs; [
    neovim
    git
  ];
}
