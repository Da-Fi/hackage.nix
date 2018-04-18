{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "scotty-blaze";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "will@casarin.me";
        author = "William Casarin";
        homepage = "";
        url = "";
        synopsis = "blaze-html integration for Scotty";
        description = "blaze-html integration for Scotty";
        buildType = "Simple";
      };
      components = {
        scotty-blaze = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-builder
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.mtl
          ];
        };
      };
    }