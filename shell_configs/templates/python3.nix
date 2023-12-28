let pkgs = import <nixpkgs> {};
in
let
  my-python-packages = ps: with ps; [
    setuptools
    pip
    # other python packages
  ];
in pkgs.mkShell rec {
  name = "Python_development";
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";  
  buildInputs = with pkgs; [
    python3
    python3Packages.pip
    python3Packages.pylint
    git
  ];
}    
