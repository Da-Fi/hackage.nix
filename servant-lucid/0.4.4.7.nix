{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-lucid";
          version = "0.4.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "Servant support for lucid";
        description = "";
        buildType = "Simple";
      };
      components = {
        servant-lucid = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.lucid
            hsPkgs.servant
          ];
        };
      };
    }