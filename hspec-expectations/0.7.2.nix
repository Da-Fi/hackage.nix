{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-expectations";
          version = "0.7.2";
        };
        license = "MIT";
        copyright = "(c) 2011-2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/hspec-expectations#readme";
        url = "";
        synopsis = "Catchy combinators for HUnit";
        description = "Catchy combinators for HUnit: <https://github.com/sol/hspec-expectations#readme>";
        buildType = "Simple";
      };
      components = {
        hspec-expectations = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
          ];
        };
      };
    }