{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "smtLib";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "A library for working with the SMTLIB format.";
        description = "A library for working with the SMTLIB format.";
        buildType = "Simple";
      };
      components = {
        smtLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
          ];
        };
      };
    }