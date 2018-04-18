{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "system-extra";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "arnaud.oqube@gmail.com";
        author = "Arnaud Bailly";
        homepage = "";
        url = "";
        synopsis = "A bunch of system utilities used by other projects";
        description = "This package provides various system-level utilities, mostly related to building packages\nwithin docker";
        buildType = "Simple";
      };
      components = {
        system-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.process
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.system-extra
            ];
          };
        };
      };
    }