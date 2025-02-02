# Blender with CUDA Support (NixOS 24.11)

This repository provides a Nix flake to build Blender with CUDA acceleration using NixOS 24.11 packages.

### Requirements
- x86_64 Linux system
- NVIDIA GPU with compatible drivers (535.x+)
- [Nix Flakes](https://nixos.wiki/wiki/Flakes) enabled
- [Cachix](https://www.cachix.org/) account (optional)

### Usage

```bash
nix build .#blender-with-cuda
```
