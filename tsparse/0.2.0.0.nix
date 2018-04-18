{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tsparse";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/tsparse";
        url = "";
        synopsis = "Parses U.S. federal Thrift Savings Plan PDF quarterly statements";
        description = "See the TsParse module for details.\n\nThere are also multiple tests in the package, but these are not built\nby default.  To get the tests, build with the \"test\" flag.\n\nBinaries you will get if you build with the \"test\" flag:\n\n* parse-tsp-pdf - given a single command-line argument which is the\nfilename of a TSP PDF statement, will pretty print the data in\nthe file.\n\n* parse-tsp-text - given a single command-line argument which is the\nfilename of TSP data that is output from pdftotext (or is\ngenerated by gen-tsp), pretty prints the data in the file.  If no\nfilename, reads standard input.\n\n* test-tsp - tests all QuickCheck properties in the library.\n\n* gen-tsp - given a single command-line argument which is the\nQuickCheck \"size\" parameter (this should be a non-negative\ninteger), generates a valid input to the parse-tsp-text file.  The\nbigger the number, the more text you get.";
        buildType = "Simple";
      };
      components = {
        tsparse = {
          depends  = [
            hsPkgs.base
            hsPkgs.Decimal
            hsPkgs.time
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.pretty
          ];
        };
        exes = {
          parse-tsp-pdf = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.time
              hsPkgs.split
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pretty
            ];
          };
          parse-tsp-text = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.time
              hsPkgs.split
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pretty
            ];
          };
          test-tsp = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.time
              hsPkgs.split
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pretty
            ] ++ pkgs.lib.optional (!(!_flags.test)) hsPkgs.QuickCheck;
          };
          gen-tsp = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.time
              hsPkgs.split
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pretty
              hsPkgs.random
            ] ++ pkgs.lib.optional (!(!_flags.test)) hsPkgs.QuickCheck;
          };
        };
      };
    }