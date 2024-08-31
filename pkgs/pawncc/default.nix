{ stdenv, fetchgit, cmake }:

stdenv.mkDerivation rec {
  pname = "pawncc";
  version = "3.10.10";

  src = fetchgit {
    url = "https://github.com/neetoons/compiler";
    rev = "c32c1cb20ac391e2f2d937a7d7be912b469af322";
    sha256 = "sha256-r3R7HYDntkdnkVXC5hL27wUyOeStIwtLoFJn+WrADLE=";
  };

  buildInputs = [
    cmake
  ];
}