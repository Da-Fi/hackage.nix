{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "alsa";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API.";
      description = "This package provides access to\n\n* ALSA sequencer (MIDI support)\n\n* ALSA realtime audio signal input and output";
      buildType = "Simple";
    };
    components = {
      "alsa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
        libs = [ (pkgs."asound") ];
      };
    };
  }