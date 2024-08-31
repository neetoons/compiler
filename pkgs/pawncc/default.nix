{ stdenv, fetchgit, cmake }:

stdenv.mkDerivation rec {
  pname = "pawncc";
  version = "3.10.10";

  src = fetchgit {
    url = "https://github.com/neetoons/compiler";
    rev = "134ad7a836c581546665340aedb59efd4636e269";
    sha256 = "sha256-ls7LOiWXyJ8DrwT4VXB2XQKlWx7+35BrLHfiH6wqT+Y=";
  };

  buildInputs = [
    cmake
  ];
}