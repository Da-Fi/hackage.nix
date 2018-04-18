{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.1";
        identifier = {
          name = "uulib";
          version = "0.9.7";
        };
        license = "LicenseRef-LGPL";
        copyright = "Universiteit Utrecht";
        maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Haskell Utrecht Tools Library";
        description = "Fast Parser Combinators and Pretty Printing Combinators";
        buildType = "Simple";
      };
      components = {
        uulib = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.ghc-prim
          ];
        };
      };
    }