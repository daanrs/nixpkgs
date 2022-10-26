{ lib
, buildPythonPackage
, fetchPypi
, python

, pillow
, pymunk
, pyglet
, pytiled-parser
, pyyaml
, numpy
, shapely
}:

buildPythonPackage rec {
  pname = "arcade";
  # version = "2.4.1";
  version = "2.5.5";
  format = "wheel";

  propagatedBuildInputs = [
    pillow
    pymunk
    pyglet
    pytiled-parser
    pyyaml
    numpy
    shapely
  ];

  src = fetchPypi {
    inherit pname version format;
    dist = "py3";
    python = "py3";
    # sha256 = "sha256-i40LboncAQ4jlNGwWQ6otdXyuR6Yrt9M8C2HPy6QJPw=";
    sha256 = "sha256-7ETfp/plPDNIFcBMAcqAag+MMvqRWtI7+SvhcZNjYOc=";
  };
}
