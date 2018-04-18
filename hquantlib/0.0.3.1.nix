{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      optimize = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18.0";
        identifier = {
          name = "hquantlib";
          version = "0.0.3.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
        author = "Pavel Ryzhov";
        homepage = "http://github.com/paulrzcz/hquantlib.git";
        url = "";
        synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
        description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
        buildType = "Simple";
      };
      components = {
        hquantlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.hmatrix
            hsPkgs.hmatrix-gsl
            hsPkgs.hmatrix-special
            hsPkgs.parallel
            hsPkgs.mersenne-random
            hsPkgs.statistics
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.HerbiePlugin
          ];
        };
        exes = {
          mctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.hquantlib
              hsPkgs.parallel
              hsPkgs.mersenne-random
              hsPkgs.containers
            ];
          };
        };
        tests = {
          main-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }