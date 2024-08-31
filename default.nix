{
  pkgs ? import (fetchTarball {
    url = "https://github.com/neetoons/compiler/releases/download/3.10.10/compiler.tar.xz";
    sha256 = "sha256:1f6rw9h58vxxf6haimas2qk48m8hjd0aa20zjwzh2d0qzj234vl1";
  }) {}
}:

with pkgs;

let
  packages = rec {
    chord = callPackage ./pkgs/pawncc {};

    inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.
  };
in
  packages
