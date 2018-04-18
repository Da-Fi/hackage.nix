{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      safe-cheap = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmatrix-special";
          version = "0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "http://code.haskell.org/hmatrix";
        url = "";
        synopsis = "Interface to GSL special functions";
        description = "Interface to GSL special functions.";
        buildType = "Simple";
      };
      components = {
        hmatrix-special = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
      };
    }