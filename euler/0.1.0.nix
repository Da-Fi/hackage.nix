{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "euler";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "luis@decomputed.com";
        author = "Luis Rodrigues Soares";
        homepage = "https://github.com/decomputed/euler";
        url = "";
        synopsis = "Mathematics utilities for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        euler = {
          depends  = [ hsPkgs.base ];
        };
      };
    }