{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      check-bounds = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arithmoi";
          version = "0.6.0.0";
        };
        license = "MIT";
        copyright = "(c) 2011 Daniel Fischer, 2016-2017 Andrew Lelechenko, Carter Schonwald";
        maintainer = "Carter Schonwald  carter at wellposed dot com,\nAndrew Lelechenko andrew dot lelechenko at gmail dot com";
        author = "Daniel Fischer";
        homepage = "https://github.com/cartazio/arithmoi";
        url = "";
        synopsis = "Efficient basic number-theoretic functions.";
        description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation).";
        buildType = "Simple";
      };
      components = {
        arithmoi = {
          depends  = ([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.integer-gmp
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.exact-pi
            hsPkgs.integer-logarithms
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        tests = {
          spec = {
            depends  = ([
              hsPkgs.arithmoi
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.transformers
              hsPkgs.integer-gmp
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
        benchmarks = {
          criterion = {
            depends  = [
              hsPkgs.base
              hsPkgs.arithmoi
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.integer-logarithms
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats;
          };
        };
      };
    }