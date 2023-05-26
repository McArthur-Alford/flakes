{
  description = "Flake for rust dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = import nixpkgs { };
  in
  pkgs.mkShell {
    packages = with pkgs; [
      rustToolchain
      rust-analyzer
      rustc
      cargo
      gcc
      rustfmt
      clippy
    ];

    shellHook = ''
      ${pkgs.rustToolchain}/bin/cargo --version
    '';
  };
}
