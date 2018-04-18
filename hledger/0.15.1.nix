{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hledger";
          version = "0.15.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "The main command-line interface for the hledger accounting tool.";
        description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
        buildType = "Simple";
      };
      components = {
        hledger = {
          depends  = [
            hsPkgs.hledger-lib
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.time
            hsPkgs.utf8-string
          ];
        };
        exes = {
          hledger = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.time
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }