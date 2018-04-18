{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dd = true;
      mkl = false;
      unsafe = false;
      finit = false;
      debugfpu = false;
      debugnan = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix";
          version = "0.15.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Linear algebra and numerical computation";
        description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.\n\nThe Linear Algebra API is organized as follows:\n\n- \"Data.Packed\": structure manipulation\n\n- \"Numeric.Container\": simple numeric functions\n\n- \"Numeric.LinearAlgebra.Algorithms\": matrix computations\n\n- \"Numeric.LinearAlgebra\": everything + instances of standard Haskell numeric classes";
        buildType = "Custom";
      };
      components = {
        hmatrix = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.storable-complex
            hsPkgs.process
            hsPkgs.random
            hsPkgs.vector
            hsPkgs.binary
            hsPkgs.deepseq
          ];
          libs = (((if _flags.mkl && system.isX86_64
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
            ]) ++ pkgs.lib.optional system.isOsx pkgs.gsl) ++ optionals system.isFreebsd [
            pkgs.gsl
            pkgs.blas
            pkgs.lapack
          ]) ++ optionals system.isWindows [
            pkgs.gsl-0
            pkgs.blas
            pkgs.lapack
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }