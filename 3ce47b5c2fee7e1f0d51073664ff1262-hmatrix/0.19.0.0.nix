{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      openblas = false;
      disable-default-paths = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix";
          version = "0.19.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alberto Ruiz";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Numeric Linear Algebra";
        description = "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.\n\nStandard interface: \"Numeric.LinearAlgebra\".\n\nSafer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
        buildType = "Simple";
      };
      components = {
        hmatrix = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.random
            hsPkgs.split
            hsPkgs.bytestring
            hsPkgs.storable-complex
            hsPkgs.semigroups
            hsPkgs.vector
          ];
          libs = (((if system.isOsx && _flags.openblas
            then [ pkgs.openblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ]) ++ pkgs.lib.optionals system.isFreebsd ([
            pkgs.gfortran
          ] ++ (if _flags.openblas
            then [ pkgs.openblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ]))) ++ (if system.isWindows && _flags.openblas
            then [
              pkgs.libopenblas
              pkgs.libgcc_s_seh-1
              pkgs.libgfortran
              pkgs.libquadmath-0
            ]
            else [
              pkgs.blas
              pkgs.lapack
            ])) ++ (if system.isLinux && _flags.openblas
            then [ pkgs.openblas ]
            else [ pkgs.blas pkgs.lapack ]);
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }