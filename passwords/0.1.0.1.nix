{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "passwords";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "maxim.kulkin@gmail.com";
        author = "Maxim Kulkin";
        homepage = "";
        url = "";
        synopsis = "Password generation/validation library";
        description = "";
        buildType = "Simple";
      };
      components = {
        passwords = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.MonadRandom
            hsPkgs.containers
          ];
        };
      };
    }