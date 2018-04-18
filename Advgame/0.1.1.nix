{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Advgame";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "inforichland@gmail.com";
        author = "Tim Wawrzynczak";
        homepage = "";
        url = "";
        synopsis = "Lisperati's adventure game in Lisp translated to Haskell";
        description = "Lisperati's adventure game in Lisp translated to Haskell";
        buildType = "Simple";
      };
      components = {
        exes = {
          advgame = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell98
            ];
          };
        };
      };
    }