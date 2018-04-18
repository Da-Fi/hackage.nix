{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "comonad-random";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Jake.McArthur@gmail.com";
        author = "Jake McArthur";
        homepage = "";
        url = "";
        synopsis = "Comonadic interface for random values";
        description = "Comonadic interface for random values";
        buildType = "Simple";
      };
      components = {
        comonad-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.category-extras
            hsPkgs.random
          ];
        };
      };
    }