{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fieldwise";
          version = "0.1.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "gracjanpolak@gmail.com";
        author = "Gracjan Polak";
        homepage = "";
        url = "";
        synopsis = "Provides Fieldwise typeclass for operations of fields of records treated as independent components.";
        description = "";
        buildType = "Simple";
      };
      components = {
        fieldwise = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }