{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-loops-stm";
          version = "0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/monad-loops-stm";
        url = "";
        synopsis = "Monadic loops for STM";
        description = "Some useful control operators for looping.";
        buildType = "Simple";
      };
      components = {
        monad-loops-stm = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }