{
  pkgs ? import (fetchTarball {
    url = "https://github.com/neetoons/compiler/archive/134ad7a836c581546665340aedb59efd4636e269.zip";
    sha256 = "a2f2788a451d94d6e9d3150f42b4bc5d004dd270148a01ef2bee1553013f9df8";
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
