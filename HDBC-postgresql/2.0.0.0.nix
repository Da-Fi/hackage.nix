{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HDBC-postgresql";
          version = "2.0.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2009 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hdbc-postgres";
        url = "";
        synopsis = "PostgreSQL driver for HDBC";
        description = "This package provides a PostgreSQL driver for HDBC";
        buildType = "Custom";
      };
      components = {
        HDBC-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.old-locale
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-time
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.pq ];
        };
        exes = {
          runtests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.time
              hsPkgs.old-locale
            ];
            libs = [ pkgs.pq ];
          };
        };
      };
    }