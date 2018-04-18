{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-c-quote";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "C/CUDA/OpenCL quasiquoting library.";
        description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions.";
        buildType = "Custom";
      };
      components = {
        language-c-quote = {
          depends  = ([
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.template-haskell;
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.language-c-quote
              hsPkgs.srcloc
              hsPkgs.symbol
            ];
          };
        };
      };
    }