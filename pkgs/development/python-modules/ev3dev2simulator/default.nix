{ lib
, buildPythonPackage
, fetchFromGitHub
, python

, arcade
, ev3devlogging
, pyglet
, pymunk
, numpy
, pyttsx3
, simpleaudio
, strictyaml
}:

buildPythonPackage rec {
  pname = "ev3dev2simulator";
  version = "2.0.5";

  propagatedBuildInputs = [
    arcade
    ev3devlogging
    pyglet
    pymunk
    pyttsx3
    simpleaudio
    strictyaml
  ];

  doCheck = false;

  # install_requires=['ev3devlogging', 'arcade==2.4.1',
  # 'pypiwin32; platform_system=="Windows"',
  # 'pyobjc;sys.platform=="darwin"', 'pymunk==5.6.0',
  # 'simpleaudio==1.0.4', 'pyttsx3==2.7', 'numpy', 'pyglet',
  # 'strictyaml'],

  # src = fetchFromGitHub {
  #   owner = "ev3dev-python-tools";
  #   repo = "ev3dev2simulator";
  #   rev = "v${version}";
  #   sha256 = "sha256-1Qu1ctGdYRw6oG6CVhLnAiNZtW5H1qC1Djb1xNeX4nk=";
  # };

  src = /home/work/code/ev3dev2simulator;
}
