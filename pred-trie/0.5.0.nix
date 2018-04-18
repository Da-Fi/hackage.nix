{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pred-trie";
          version = "0.5.0";
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
            hsPkgs.composition-extra
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.poly-arity
            hsPkgs.semigroups
            hsPkgs.tries
            hsPkgs.unordered-containers
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.composition-extra
              hsPkgs.deepseq
              hsPkgs.errors
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.poly-arity
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.composition-extra
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.poly-arity
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.sets
              hsPkgs.criterion
            ];
          };
        };
      };
    }