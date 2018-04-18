{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "doctest";
          version = "0.11.2";
        };
        license = "MIT";
        copyright = "(c) 2009-2017 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/doctest#readme";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at\n<https://github.com/sol/doctest#readme>.";
        buildType = "Simple";
      };
      components = {
        doctest = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.ghc
            hsPkgs.syb
            hsPkgs.code-page
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.ghc-paths
            hsPkgs.transformers
          ];
        };
        exes = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.syb
              hsPkgs.code-page
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.ghc-paths
              hsPkgs.transformers
              hsPkgs.base-compat
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.stringbuilder
              hsPkgs.silently
              hsPkgs.setenv
              hsPkgs.with-location
              hsPkgs.mockery
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }