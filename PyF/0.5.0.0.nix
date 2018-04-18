{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "PyF";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "guillaum.bouchard@gmail.com";
        author = "Guillaume Bouchard";
        homepage = "";
        url = "";
        synopsis = "Quasiquotations for a python like interpolated string formater";
        description = "Quasiquotations for a python like interpolated string formater.";
        buildType = "Simple";
      };
      components = {
        PyF = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.megaparsec
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.formatting
            hsPkgs.haskell-src-meta
          ];
        };
        tests = {
          pyf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.PyF
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.formatting
              hsPkgs.process
            ];
          };
        };
      };
    }