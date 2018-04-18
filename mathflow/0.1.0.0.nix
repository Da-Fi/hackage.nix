{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usepython = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mathflow";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Junji Hashimoto";
        maintainer = "junji.hashimoto@gmail.com";
        author = "Junji Hashimoto";
        homepage = "https://github.com/junjihashimoto/mathflow#readme";
        url = "";
        synopsis = "Dependently typed tensorflow modeler";
        description = "";
        buildType = "Simple";
      };
      components = {
        mathflow = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
            hsPkgs.process
            hsPkgs.template-haskell
          ];
        };
        tests = {
          mathflow-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mathflow
              hsPkgs.singletons
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.hspec-server
              hsPkgs.shakespeare
              hsPkgs.text
              hsPkgs.template-haskell
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