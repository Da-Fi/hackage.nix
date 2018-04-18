{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Geodetic";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Tony Morris";
        maintainer = "code@tmorris.net";
        author = "Tony Morris";
        homepage = "http://code.google.com/p/geodetic/";
        url = "";
        synopsis = "Geodetic calculations";
        description = "Geodetic calculations including Vincenty and Great Circle";
        buildType = "Simple";
      };
      components = {
        Geodetic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }