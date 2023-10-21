{
  description = "A collection of templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    nixosModules = {
      yee = {config, pkgs, lib, ...}: {
        environment.variables.MAGIC = "MAGICAL";
      };
      default = self.yee;
    };
    templates = {
      rust = {
        path = ./rust;
        description = "Rust";
        welcomeText = ''
          # A simple Rust/Cargo Template
          Provides access to rust and cargo. Obviously.
        '';
      };
      default = {
        path = ./default;
        description = "Default";
        welcomeText = ''
          # A empty, default template
          ...to modify to your hearts content
        '';
      };
    };
  };
}
