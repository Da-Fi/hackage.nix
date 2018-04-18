{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "matrix";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "A native implementation of matrix operations.";
        description = "Matrix library. Basic operations and some algorithms.\n\nTo get the library update your cabal package list (if needed) with @cabal update@ and\nthen use @cabal install matrix@, assuming that you already have Cabal installed.\nUsage examples are included in the API reference generated by Haddock.\n\nIf you want to use GSL, BLAS and LAPACK, @hmatrix@ (<http://hackage.haskell.org/package/hmatrix>)\nis the way to go.";
        buildType = "Simple";
      };
      components = {
        matrix = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.deepseq
          ];
        };
        benchmarks = {
          matrix-mult = {
            depends  = [
              hsPkgs.base
              hsPkgs.matrix
              hsPkgs.criterion
            ];
          };
        };
      };
    }