{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ghc-server";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "None";
        homepage = "";
        url = "";
        synopsis = "None";
        description = "None";
        buildType = "Simple";
      };
      components = {
        ghc-server = {};
      };
    }