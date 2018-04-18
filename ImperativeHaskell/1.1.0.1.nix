{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ImperativeHaskell";
          version = "1.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Matthew Mirman <mmirman@andrew.cmu.edu>";
        author = "Matthew Mirman";
        homepage = "https://github.com/mmirman/ImperativeHaskell";
        url = "";
        synopsis = "A library for writing Imperative style haskell.";
        description = "A monad that uses GADTs and continuations\nto replicate what it is like to program\nin an imperative language like C or Java\nwith \"return\", \"for\", \"break\", \"continue\",\nand mutable references.";
        buildType = "Simple";
      };
      components = {
        ImperativeHaskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
      };
    }