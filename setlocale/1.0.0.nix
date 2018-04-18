{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "setlocale";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Sven Bartscher";
        maintainer = "sven.bartscher@weltraumschlangen.de";
        author = "Sven Bartscher";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to setlocale";
        description = "";
        buildType = "Simple";
      };
      components = {
        setlocale = {
          depends  = [ hsPkgs.base ];
        };
      };
    }