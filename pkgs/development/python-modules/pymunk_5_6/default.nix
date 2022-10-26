{ stdenv
, lib
, buildPythonPackage
, fetchPypi
, python
, cffi
, pytestCheckHook
}:

buildPythonPackage rec {
  pname = "pymunk";
  version = "5.6.0";

  src = fetchPypi {
    inherit pname version;
    extension = "zip";
    sha256 = "sha256-26idPk6sQMyjFGg2azcUWQIf8fQzNZKXqMlrHt4Rwgs=";
  };

  propagatedBuildInputs = [ cffi ];

  preBuild = ''
    ${python.interpreter} setup.py build_ext --inplace
  '';

  # checkInputs = [ pytestCheckHook ];
  # pytestFlagsArray = [
  #   "pymunk/tests"
  # ];
  # pythonImportsCheck = [ "pymunk" ];

}
