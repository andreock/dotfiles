let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "platformio_development";
  
  buildInputs = with pkgs; [
    wireshark
    gns3-server
    gns3-gui
  ];
}    
