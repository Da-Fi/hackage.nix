{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mkl = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmatrix-gsl-stats";
          version = "0.1.2.7";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) A.V.H. McPhail 2010";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hmatrix-gsl-stats";
        url = "";
        synopsis = "GSL Statistics interface";
        description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.";
        buildType = "Custom";
      };
      components = {
        hmatrix-gsl-stats = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.storable-complex
            hsPkgs.hmatrix
          ];
          libs = ((if _flags.mkl && system.isX86_64
            then [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel_lp64
              pkgs.mkl_sequential
              pkgs.mkl_core
            ]
            else [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel
              pkgs.mkl_sequential
              pkgs.mkl_core
            ]) ++ pkgs.lib.optional system.isOsx pkgs.gsl) ++ optionals system.isWindows [
            pkgs.gsl-0
            pkgs.blas
            pkgs.lapack
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }