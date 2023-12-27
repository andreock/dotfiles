let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "platformio_development";
  
  buildInputs = with pkgs; [
    # Platformio deps
    platformio 
    clang 
    gcc 
    python3
    git
    # Documentation deps
    nodejs
    fritzing
    # Neovim deps
    # neovim
    vscode
  ];
}    
