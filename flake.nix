{
  description = "A collection of templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    nixosModules = {
      default = {config, pkgs, lib, ...}: {
        nix.registry.devtemplates = {
          to = {
            owner = "McArthur-Alford";
            repo = "nix-templates";
            type = "github";
          };
          from = {
            id = "devtemplates";
            type = "indirect";
          };
        };
      };
    };
    templates = {
      default = {
        path = ./default;
        description = "Default";
        welcomeText = ''
          # A empty, default template
          ...to modify to your hearts content
        '';
      };
      rust = {
        path = ./rust;
        description = "Rust";
        welcomeText = ''
          # A simple Rust/Cargo Template
          Provides access to rust and cargo. Obviously.
        '';
      };
      # haskell = {};
      # java = {};
      # python = {};
      # pytorch = {};
      # c = {};
    };
  };
}
