# Blender with CUDA Support (NixOS 25.05)

This repository provides a Nix flake to build Blender with CUDA acceleration using NixOS 25.05 packages.
Since blender with CUDA support is a pain to compile from source, I use GHA to build the package and upload it to Cachix.

### Requirements
- x86_64 Linux system
- NVIDIA GPU with compatible drivers (535.x+)
- [Nix Flakes](https://nixos.wiki/wiki/Flakes) enabled
- [Cachix](https://www.cachix.org/) account (optional)

### Usage

```bash
nix build .#blender-with-cuda
```
