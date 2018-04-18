{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonschema";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/seagreen/hjsonschema";
        url = "";
        synopsis = "Haskell implementation of JSON Schema v4.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hjsonschema = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.regexpr
            hsPkgs.scientific
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.wreq
          ];
        };
        tests = {
          official = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hjsonschema
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }