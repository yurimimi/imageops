with import <nixpkgs> {};
with pkgs.python3.pkgs;

{ lib,
  buildPythonPackage,
# build-system
  setuptools,
  setuptools-scm,
# dependencies
  scikit-image
}:

buildPythonPackage rec {
  name = "imageops";
  #pname = "imageops";
  version = "0.0.1";

  src = ./src;

  pyproject = true;
  #propagatedBuildInputs = [ pytest numpy pkgs.libsndfile ];
  
  dependencies = [
    scikit-image
  ];

  #meta = {
  #  changelog = "https://github.com/yurimimi/imageops/releases/tag/${version}";
  #  description = "...";
  #  homepage = "https://github.com/yurimimi/imageops";
  #  license = lib.licenses.mit;
  #  maintainers = with lib.maintainers; [ yurimimi ];
  #};
   
  #preConfigure = ''
  #  export LDFLAGS="-L${pkgs.fftw}/lib -L${pkgs.fftwFloat}/lib -L${pkgs.fftwLongDouble}/lib"
  #  export CFLAGS="-I${pkgs.fftw}/include -I${pkgs.fftwFloat}/include -I${pkgs.fftwLongDouble}/include"
  #'';
}

