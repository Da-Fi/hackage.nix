{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aig";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015 Galois Inc.";
        maintainer = "jhendrix@galois.com";
        author = "Galois Inc.";
        homepage = "";
        url = "";
        synopsis = "And-inverter graphs in Haskell.";
        description = "This package provides a generic interfaces for working\nwith And-Inverter graphs (AIGs) in Haskell.  And-Inverter graphs\nare a useful format for representing combinatorial and\nsequential boolean circuits in a way that is amenable to\nsimulation and analysis.\nThese interfaces allow clients to write code that can create\nand use AIGs without depending on a particular AIG package.";
        buildType = "Simple";
      };
      components = {
        aig = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.QuickCheck
          ];
        };
      };
    }