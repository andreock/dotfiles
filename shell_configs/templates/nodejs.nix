let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "nodejs_development";
  
  buildInputs = with pkgs; [
    nodejs
    gcc
    python3
    neovim
    git
  ];
}    
