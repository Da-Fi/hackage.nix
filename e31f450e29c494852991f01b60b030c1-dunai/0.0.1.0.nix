{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dunai";
          version = "0.0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez, Manuel Bärenz";
        homepage = "";
        url = "";
        synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "dunai" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }