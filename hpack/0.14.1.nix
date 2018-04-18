{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpack";
          version = "0.14.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "https://github.com/sol/hpack#readme";
        url = "";
        synopsis = "An alternative format for Haskell packages";
        description = "";
        buildType = "Simple";
      };
      components = {
        hpack = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.Glob
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.yaml
            hsPkgs.aeson
          ];
        };
        exes = {
          hpack = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.hpack
              hsPkgs.aeson
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.temporary
              hsPkgs.mockery
              hsPkgs.interpolate
              hsPkgs.aeson-qq
              hsPkgs.aeson
            ];
          };
        };
      };
    }