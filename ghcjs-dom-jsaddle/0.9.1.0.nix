{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "ghcjs-dom-jsaddle";
          version = "0.9.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that supports both GHCJS and GHC using jsaddle";
        description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and a Browser.";
        buildType = "Simple";
      };
      components = {
        ghcjs-dom-jsaddle = {
          depends  = [
            hsPkgs.jsaddle-dom
          ];
        };
      };
    }