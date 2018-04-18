{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskheap";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "i@raynes.me";
        author = "Anthony Grimes";
        homepage = "https://github.com/Raynes/haskheap";
        url = "";
        synopsis = "Haskell bindings to refheap.";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskheap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
      };
    }