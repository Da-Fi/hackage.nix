{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sets";
          version = "0.0.5.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Ducktyped set interface for Haskell containers.";
        description = "Includes overloaded functions for common set operations. See @Data.Set.Class@.";
        buildType = "Simple";
      };
      components = {
        sets = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.commutative
            hsPkgs.composition
            hsPkgs.contravariant
            hsPkgs.witherable
            hsPkgs.keys
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.sets
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.contravariant
              hsPkgs.commutative
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.sets
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.commutative
              hsPkgs.contravariant
              hsPkgs.criterion
            ];
          };
        };
      };
    }