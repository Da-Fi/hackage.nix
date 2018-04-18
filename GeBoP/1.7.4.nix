{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GeBoP";
          version = "1.7.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wxHaskell developer mailing list <wxhaskell-devel@lists.sourceforge.net>";
        author = "Maarten Löffler";
        homepage = "http://www.haskell.org/haskellwiki/GeBoP";
        url = "";
        synopsis = "Several games";
        description = "The games: Ataxx, Bamp, Halma, Hez, Kram, Nim, Reversi, TicTacToe, and Zenix";
        buildType = "Simple";
      };
      components = {
        exes = {
          gebop = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.wx
              hsPkgs.wxcore
            ];
          };
        };
      };
    }