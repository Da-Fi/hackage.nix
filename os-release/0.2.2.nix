{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "os-release";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Jan Matějka <yac@blesmrt.net>";
        maintainer = "<yac@blesmrt.net>";
        author = "Jan Matějka";
        homepage = "https://github.com/yaccz/os-release";
        url = "";
        synopsis = "/etc/os-release helpers";
        description = "/etc/os-release helpers";
        buildType = "Simple";
      };
      components = {
        os-release = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.os-release
              hsPkgs.hspec
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.temporary
            ];
          };
          documentation = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.regex-compat
            ];
          };
          style = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }