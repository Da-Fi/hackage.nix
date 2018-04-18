{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell2010";
          version = "1.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "http://www.haskell.org/onlinereport/haskell2010/";
        url = "";
        synopsis = "Compatibility with Haskell 2010";
        description = "This package provides exactly the library modules defined by\nthe <http://www.haskell.org/onlinereport/haskell2010/ Haskell 2010 standard>.";
        buildType = "Simple";
      };
      components = {
        haskell2010 = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }