{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hmep";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Bogdan Penkovsky";
        maintainer = "dev at penkovsky dot com";
        author = "Bogdan Penkovsky";
        homepage = "https://github.com/masterdezign/hmep#readme";
        url = "";
        synopsis = "HMEP Multi Expression Programming –\na genetic programming variant";
        description = "A multi expression programming implementation with\nfocus on speed.\n\nhttps://en.wikipedia.org/wiki/Multi_expression_programming";
        buildType = "Simple";
      };
      components = {
        "hmep" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mwc-random
            hsPkgs.primitive
            hsPkgs.probable
            hsPkgs.vector
          ];
        };
        exes = {
          "hmep-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.probable
              hsPkgs.vector
              hsPkgs.hmep
            ];
          };
          "hmep-sin-approximation" = {
            depends  = [
              hsPkgs.base
              hsPkgs.probable
              hsPkgs.vector
              hsPkgs.hmep
            ];
          };
        };
        tests = {
          "hmep-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.vector
              hsPkgs.hmep
            ];
          };
        };
      };
    }