{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "sessions";
          version = "2007.6.17";
        };
        license = "LicenseRef-LGPL";
        copyright = "Matthew Sackman";
        maintainer = "matthew@wellquite.org";
        author = "Matthew Sackman";
        homepage = "http://www.wellquite.org/sessions/";
        url = "";
        synopsis = "Session Types for Haskell";
        description = "This library implements session types for Haskell.\nIt is currently extremely experimental and only\ncompiles with GHC 6.7.x or better. Documentation\nis also extremely scarce at the moment but hopefully\nshould appear soon.";
        buildType = "Custom";
      };
      components = {
        sessions = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }