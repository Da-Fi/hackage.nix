{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-imported-from";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "carlo@carlo-hamalainen.net";
        author = "Carlo Hamalainen";
        homepage = "https://github.com/carlohamalainen/ghc-imported-from";
        url = "";
        synopsis = "Find the Haddock documentation for a symbol.";
        description = "Given a Haskell module and symbol, determine the URL to the Haddock documentation\nfor that symbol.";
        buildType = "Simple";
      };
      components = {
        ghc-imported-from = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.ghc-syb-utils
            hsPkgs.Cabal
            hsPkgs.ghc-mod
            hsPkgs.filepath
            hsPkgs.safe
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        exes = {
          ghc-imported-from = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
              hsPkgs.Cabal
              hsPkgs.ghc-mod
              hsPkgs.filepath
              hsPkgs.safe
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
              hsPkgs.Cabal
              hsPkgs.ghc-mod
              hsPkgs.filepath
              hsPkgs.safe
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.hspec
            ];
          };
        };
      };
    }