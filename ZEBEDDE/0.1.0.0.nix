{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ZEBEDDE";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hackrilege@gmail.com";
        author = "Hackrilege";
        homepage = "";
        url = "";
        synopsis = "Polymer growth simulation method";
        description = "";
        buildType = "Simple";
      };
      components = {
        ZEBEDDE = {
          depends  = [
            hsPkgs.base
            hsPkgs.vect
          ];
        };
      };
    }