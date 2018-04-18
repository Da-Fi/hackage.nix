{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HDBC-session";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2014 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "Bracketed connection for HDBC";
        description = "This package contains a base bracketed function\nto call close correctly against opend DB connection.";
        buildType = "Simple";
      };
      components = {
        HDBC-session = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
          ];
        };
      };
    }