{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      safe = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "void";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/void";
        url = "";
        synopsis = "A Haskell 98 logically uninhabited data type";
        description = "A Haskell 98 logically uninhabited data type, used to indicate that a given term should not exist.";
        buildType = "Simple";
      };
      components = {
        void = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.semigroups
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }