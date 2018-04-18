{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HandlerSocketClient";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Wu Xingbo (wuxb45@gmail.com)";
        maintainer = "Wu Xingbo";
        author = "Wu Xingbo";
        homepage = "https://github.com/wuxb45/HandlerSocket-Haskell-Client";
        url = "";
        synopsis = "Haskell implementation of a HandlerSocket client (API).";
        description = "This package implemets API for a HandlerSocket client.";
        buildType = "Simple";
      };
      components = {
        HandlerSocketClient = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
          ];
        };
      };
    }