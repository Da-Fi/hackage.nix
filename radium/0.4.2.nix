{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "radium";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/radium";
        url = "";
        synopsis = "Chemistry";
        description = "This library contains:\n\n* periodic table with information about elements\n\n* Readers and writers for different formula formats.";
        buildType = "Simple";
      };
      components = {
        radium = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
        };
      };
    }