{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-http";
          version = "9.1.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2011 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "Interface to native Haskell HTTP package HTTP";
        description = "Interface to native Haskell HTTP package HTTP.\nThis package can be used as alternative for the hxt-curl package\nfor accessing documents via HTTP";
        buildType = "Simple";
      };
      components = {
        hxt-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.hxt
          ];
        };
      };
    }