{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basement";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez";
        maintainer = "vincent@snarc.org";
        author = "";
        homepage = "https://github.com/haskell-foundation/foundation";
        url = "";
        synopsis = "Foundation scrap box of array & string";
        description = "Foundation most basic primitives without any dependencies";
        buildType = "Simple";
      };
      components = {
        basement = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
      };
    }