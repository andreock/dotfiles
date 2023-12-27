let pkgs = import <nixpkgs> {};
in
let
  my-python-packages = ps: with ps; [
    setuptools
    # other python packages
  ];
in pkgs.mkShell rec {
  name = "nodejs_development";
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";  
  buildInputs = with pkgs; [
    python3
    git
  ];
}    
