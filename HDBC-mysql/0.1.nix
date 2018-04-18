{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HDBC-mysql";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2009 Chris Waterson";
        maintainer = "Chris Waterson <waterson@maubi.net>";
        author = "Chris Waterson";
        homepage = "http://www.maubi.net/~waterson/hacks/hdbc-mysql.html";
        url = "";
        synopsis = "MySQL driver for HDBC";
        description = "This package provides a MySQL driver for HDBC.";
        buildType = "Custom";
      };
      components = {
        HDBC-mysql = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.HDBC
          ];
        };
      };
    }