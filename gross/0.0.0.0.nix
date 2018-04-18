{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gross";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "sgschlesinger@gmail.com";
        author = "Samuel Schlesinger";
        homepage = "";
        url = "";
        synopsis = "A spoof on gloss for terminal animation";
        description = "An easy way to make terminal interfaces";
        buildType = "Simple";
      };
      components = {
        gross = {
          depends  = [
            hsPkgs.base
            hsPkgs.ncurses
            hsPkgs.mtl
          ];
        };
      };
    }