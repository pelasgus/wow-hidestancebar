{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.lua                  # Lua interpreter
    pkgs.luarocks             # Package manager for Lua
    pkgs.lua-language-server  # LSP for better IDE support
    pkgs.stylua               # Lua code formatter
  ];

  shellHook = ''
    echo ""  # Empty line before the message
    echo -e "\e[35mLua development environment activated, \e[32m\e[1m$(whoami)\e[0m\e[35m!\e[0m"
  '';
}
