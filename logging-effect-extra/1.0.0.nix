{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging-effect-extra";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jason Shipman";
        author = "";
        homepage = "https://github.com/jship/logging-effect-extra#readme";
        url = "";
        synopsis = "Supplemental packages for `logging-effect`.";
        description = "Supplemental packages for `logging-effect`.";
        buildType = "Simple";
      };
      components = {
        logging-effect-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.logging-effect
            hsPkgs.logging-effect-extra-file
            hsPkgs.wl-pprint-text
          ];
        };
        exes = {
          log-extra = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect-extra
            ];
          };
        };
      };
    }