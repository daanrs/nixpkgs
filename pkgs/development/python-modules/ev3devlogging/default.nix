{ lib
, buildPythonPackage
, fetchPypi
, python

}:

buildPythonPackage rec {
  pname = "ev3devlogging";
  version = "1.0.1";
  format = "wheel";

  src = fetchPypi {
    inherit pname version format;
    dist = "py3";
    python = "py3";
    sha256 = "sha256-g4AuH6U6lgYIGlIAJaCchRuU7Uub0Pe9GjZ9V2Qc4/w=";
  };
}
