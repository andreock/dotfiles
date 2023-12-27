let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "platformio_development";
  
  buildInputs = with pkgs; [
    platformio clang gcc python3 git
    # Neovim deps
    neovim
    nodejs
  ];
}    
