{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "event";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Monoidal, monadic and first-class events";
        description = "This package can be used to represent events as\nfirst-class objects instead of deepening callbacks and\nnesting callbacks. Useful to wrap over __C__ callback-based\nlibraries.";
        buildType = "Simple";
      };
      components = {
        event = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.semigroups
          ];
        };
      };
    }