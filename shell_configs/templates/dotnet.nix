let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "dotnet_development";
  
  buildInputs = with pkgs; [
    dotnet-sdk
    dotnet-runtime
    nodejs
    gcc
    python3
    neovim
    git
    opencv
  ];
}    
