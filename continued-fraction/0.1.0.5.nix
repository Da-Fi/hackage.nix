{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "continued-fraction";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vanessa.mchale@reconfigure.io";
        author = "Vanessa McHale";
        homepage = "https://hub.darcs.net/vmchale/continued-fraction#readme";
        url = "";
        synopsis = "Types and functions for working with continued fractions in Haskell";
        description = "This package provides facilities for working with both continued fractions\nand rational approximants. It uses lists internally, so it may not be suitable\nif you need large convergents.";
        buildType = "Simple";
      };
      components = {
        continued-fraction = {
          depends  = [
            hsPkgs.base
            hsPkgs.recursion-schemes
          ];
        };
        tests = {
          continued-fractions-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.continued-fraction
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          continued-fractions-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.continued-fraction
              hsPkgs.criterion
            ];
          };
        };
      };
    }