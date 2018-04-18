{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "serversession-frontend-wai";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa <felipe.lessa@gmail.com>";
        homepage = "https://github.com/yesodweb/serversession";
        url = "";
        synopsis = "wai-session bindings for serversession.";
        description = "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>";
        buildType = "Simple";
      };
      components = {
        serversession-frontend-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cookie
            hsPkgs.data-default
            hsPkgs.path-pieces
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vault
            hsPkgs.wai
            hsPkgs.wai-session
            hsPkgs.serversession
          ];
        };
      };
    }