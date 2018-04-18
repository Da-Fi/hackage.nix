{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "byteunits";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nobody";
        author = "CabalSaneDefault";
        homepage = "";
        url = "";
        synopsis = "Human friendly conversion between byte units (KB, MB, GB...)";
        description = "Human friendly conversion between byte units (KB, MB, GB...)...";
        buildType = "Simple";
      };
      components = {
        byteunits = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
          ];
        };
        tests = {
          testing-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.byteunits
              hsPkgs.HUnit
            ];
          };
        };
      };
    }