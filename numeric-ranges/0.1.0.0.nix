{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "numeric-ranges";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ndel314@gmail.com";
        author = "Nicolas Del Piano";
        homepage = "http://github.com/nicodelpiano/numeric-ranges";
        url = "";
        synopsis = "A framework for numeric ranges.";
        description = "";
        buildType = "Simple";
      };
      components = {
        numeric-ranges = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.numeric-ranges
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.hspec
            ];
          };
        };
      };
    }