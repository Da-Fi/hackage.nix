{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsontsv";
          version = "0.1.4.3";
        };
        license = "MIT";
        copyright = "(c) 2014 Daniel Choi";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/jsontsv";
        url = "";
        synopsis = "JSON to TSV transformer";
        description = "Transforms JSON into tab-separated line-oriented output, for easier processing in Unix-style pipelines.";
        buildType = "Simple";
      };
      components = {
        exes = {
          jsontsv = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.optparse-applicative
              hsPkgs.string-qq
              hsPkgs.csv
            ];
          };
        };
      };
    }