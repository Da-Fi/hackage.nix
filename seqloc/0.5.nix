{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "seqloc";
          version = "0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nick Ingolia";
        homepage = "http://www.ingolia-lab.org/software/seqloc/";
        url = "";
        synopsis = "Handle sequence locations for bioinformatics";
        description = "Handle sequence locations for bioinformatics";
        buildType = "Simple";
      };
      components = {
        seqloc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.biocore
          ];
        };
        exes = {
          test-seqloc = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.biocore
            ];
          };
        };
      };
    }