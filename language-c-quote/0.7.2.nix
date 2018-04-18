{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-c-quote";
          version = "0.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2013 Geoffrey Mainland\n(c) 2013 Manuel M. T. Chakravarty";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "C/CUDA/OpenCL/Objective-C quasiquoting library.";
        description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions as well as the entire Objective-C\nlanguage.";
        buildType = "Custom";
      };
      components = {
        language-c-quote = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exception-mtl
            hsPkgs.exception-transformers
            hsPkgs.filepath
            hsPkgs.haskell-src-meta
            hsPkgs.mainland-pretty
            hsPkgs.mtl
            hsPkgs.srcloc
            hsPkgs.syb
            hsPkgs.symbol
            hsPkgs.template-haskell
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.language-c-quote
              hsPkgs.srcloc
              hsPkgs.symbol
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }