{
  pkgs ? import (fetchTarball {
    url = "https://github.com/neetoons/compiler/releases/download/3.10.10/compiler.tar.xz";
    sha256 = "1a96fe43ead298b9263626546842c0bbc6214a522d25e9c1285ae6f8672342b0";
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
