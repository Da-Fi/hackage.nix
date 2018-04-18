{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      in-ghc-tree = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "haddock";
          version = "2.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow, David Waern";
        maintainer = "David Waern <david.waern@gmail.com>";
        author = "Simon Marlow, David Waern";
        homepage = "http://www.haskell.org/haddock/";
        url = "";
        synopsis = "A documentation-generation tool for Haskell libraries";
        description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
        buildType = "Simple";
      };
      components = {
        haddock = {};
        exes = {
          haddock = {
            depends  = ([
              hsPkgs.haskell98
              hsPkgs.ghc
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.array
            ] ++ pkgs.lib.optional (!_flags.in-ghc-tree) hsPkgs.ghc-paths) ++ (if compiler.isGhc
              then [
                hsPkgs.Cabal
                hsPkgs.base
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }