{
  description = "A collection of templates";

  # inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";
  # inputs.flake-utils.url = "github:numtide/flake-utils";


  # outputs = { self, nixpkgs, flake-utils }:
  #   flake-utils.lib.eachDefaultSystem
  #   (system:
  #     let pkgs = nixpkgs.legacyPackages.${system}; in {
  #       templates.rust = {
  #         path = ./rust;
  #         description = "rust";
  #       };
  #     }
  #   );

  outputs = { self }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust";
      };
    };
  };
}
