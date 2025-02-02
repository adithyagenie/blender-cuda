{
  description = "Blender with CUDA";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems = {
      url = "github:nix-systems/default";
      flake = false;
    };
  };

  outputs = inputs @ {self, nixpkgs, flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [];

      systems = ["x86_64-linux"];

      perSystem = { system, pkgs, ... }: let
        blender-with-cuda = pkgs.blender.override {
          cudaSupport = true;
        };
        in {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
            config.cudaSupport = true;
          };
          packages = {
            inherit blender-with-cuda;
            default = blender-with-cuda;
          };
        };

    };
}
