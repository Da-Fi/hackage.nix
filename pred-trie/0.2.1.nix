{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pred-trie";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Predicative tries";
        description = "";
        buildType = "Simple";
      };
      components = {
        pred-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.mtl
            hsPkgs.composition-extra
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.semigroups
              hsPkgs.mtl
              hsPkgs.composition-extra
            ];
          };
        };
        benchmarks = {
          simplevshort = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.semigroups
            ];
          };
        };
      };
    }