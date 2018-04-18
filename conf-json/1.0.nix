{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conf-json";
          version = "1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Imants Cekusins";
        author = "Imants Cekusins";
        homepage = "https://github.com/ciez/conf-json";
        url = "";
        synopsis = "read, parse json config";
        description = "read, parse json config to a Haskell type";
        buildType = "Simple";
      };
      components = {
        conf-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.aeson
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.aeson
              hsPkgs.conf-json
            ];
          };
        };
      };
    }