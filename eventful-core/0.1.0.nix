{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-core";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Core module for eventful";
        description = "Core module for eventful";
        buildType = "Simple";
      };
      components = {
        eventful-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.http-api-data
            hsPkgs.path-pieces
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.uuid
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.http-api-data
              hsPkgs.path-pieces
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uuid
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          style = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.http-api-data
              hsPkgs.path-pieces
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uuid
              hsPkgs.hlint
            ];
          };
        };
      };
    }