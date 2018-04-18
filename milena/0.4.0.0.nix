{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "milena";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Tyler Holien";
        maintainer = "tyler.holien@gmail.com";
        author = "Tyler Holien";
        homepage = "";
        url = "";
        synopsis = "A Kafka client for Haskell.";
        description = "The protocol module is stable (the only changes will be to support changes in the Kafka protocol). The API is functional but subject to change.";
        buildType = "Simple";
      };
      components = {
        milena = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.digest
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.lens
            hsPkgs.resource-pool
            hsPkgs.lifted-base
            hsPkgs.murmur-hash
            hsPkgs.listsafe
            hsPkgs.semigroups
          ];
        };
        exes = {
          exkhs = {
            depends  = [
              hsPkgs.base
              hsPkgs.milena
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.mtl
              hsPkgs.lifted-base
              hsPkgs.lens
              hsPkgs.pretty-show
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.milena
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.semigroups
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }