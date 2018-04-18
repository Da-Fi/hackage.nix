{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss-algorithms";
          version = "1.12.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://gloss.ouroborus.net";
        url = "";
        synopsis = "Data structures and algorithms for working with 2D graphics.";
        description = "Data structures and algorithms for working with 2D graphics.";
        buildType = "Simple";
      };
      components = {
        gloss-algorithms = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.gloss
          ];
        };
      };
    }