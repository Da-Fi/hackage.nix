{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apis";
          version = "0.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "fabian.bergmark@gmail.com";
        author = "Fabian Bergmark";
        homepage = "https://github.com/fabianbergmark/APIs";
        url = "";
        synopsis = "A Template Haskell library for generating type safe API calls";
        description = "A library that uses Open Data Tables and JSON Schemas to\ngenerate Haskell types and API calls.";
        buildType = "Simple";
      };
      components = {
        apis = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.yql
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.ecma262
            hsPkgs.exceptions
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.hslogger
            hsPkgs.hxt
            hsPkgs.mtl
            hsPkgs.opendatatable
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
          ];
        };
      };
    }