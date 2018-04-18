{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "type-int";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2006 Edward Kmett. All Rights Reserved";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://slipwave.info/";
        url = "";
        synopsis = "Type Level 2s- and 16s- Complement Integers";
        description = "Type level 2s- and 16s- complement Integers (positive and negative), Booleans, Ord and Eq";
        buildType = "Custom";
      };
      components = {
        type-int = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.base
          ];
        };
      };
    }