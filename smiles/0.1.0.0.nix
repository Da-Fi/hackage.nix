{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smiles";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017, Artem Kondukov et al.";
        maintainer = "kondiukov@biocad.ru";
        author = "Artem Kondyukov, Pavel Yakovlev";
        homepage = "https://github.com/zmactep/smiles#readme";
        url = "";
        synopsis = "";
        description = "Full support of OpenSMILES specification for Haskell";
        buildType = "Simple";
      };
      components = {
        smiles = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.text
          ];
        };
        tests = {
          smiles-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.smiles
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.megaparsec
              hsPkgs.text
            ];
          };
        };
      };
    }