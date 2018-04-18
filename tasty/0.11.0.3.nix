{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty";
          version = "0.11.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "http://documentup.com/feuerbach/tasty";
        url = "";
        synopsis = "Modern and extensible testing framework";
        description = "Tasty is a modern testing framework for Haskell.\nIt lets you combine your unit tests, golden\ntests, QuickCheck/SmallCheck properties, and any\nother types of tests into a single test suite.\nSee <http://documentup.com/feuerbach/tasty>.";
        buildType = "Simple";
      };
      components = {
        tasty = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.regex-tdfa
            hsPkgs.optparse-applicative
            hsPkgs.deepseq
            hsPkgs.unbounded-delays
            hsPkgs.async
            hsPkgs.ansi-terminal
            hsPkgs.clock
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }