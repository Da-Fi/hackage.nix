{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reactive-banana-wx";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://haskell.org/haskellwiki/Reactive-banana";
        url = "";
        synopsis = "Examples for the reactive-banana library, using wxHaskell.";
        description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.";
        buildType = "Simple";
      };
      components = {
        reactive-banana-wx = {
          depends  = [
            hsPkgs.base
            hsPkgs.reactive-banana
            hsPkgs.wx
            hsPkgs.wxcore
          ];
        };
        exes = {
          Counter = {};
          TwoCounters = {};
        };
      };
    }