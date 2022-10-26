{ lib
, buildPythonPackage
, fetchPypi
, python

, attrs
, typing-extensions
}:

buildPythonPackage rec {
  pname = "pytiled-parser";
  # version = "2.2.0";
  # version = "2.0.1";
  version = "0.9.4a3";
  format = "wheel";

  propagatedBuildInputs = [
    attrs
    typing-extensions
  ];

  src = fetchPypi {
    inherit version format;
    pname = "pytiled_parser";
    dist = "py3";
    python = "py3";
    # sha256 = "sha256-emCzGVRdt+PZ/9tz0ephPhGoIXwRVHvVDjQk3st9QKM=";
    # sha256 = "sha256-VjdGzfmes69hV6N1K3BArEVX733J7CkHS3wsFLuj0ms=";
    sha256 = "sha256-FmrZbYGqGu8xAtldGh8lcRHkHZ/lvBAKSZO0lhUenwc=";
  };
}
