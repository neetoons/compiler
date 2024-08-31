{ stdenv, fetchgit, cmake }:

stdenv.mkDerivation rec {
  pname = "pawncc";
  version = "3.10.10";

  src = fetchgit {
    url = "https://github.com/neetoons/compiler";
    rev = "28757db42a87ceb49bb3415f2b9d7a14ca1fd818";
    sha256 = "sha256-VuamqmH7haypCwblR2FSDh+dMqnNqtE+TxpNyw7B0V0=";
  };

  buildInputs = [
    cmake
  ];
}