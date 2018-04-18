{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "har";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "freizl@gmail.com";
        author = "Haisheng.Wu";
        homepage = "https://github.com/freizl/har";
        url = "";
        synopsis = "HAR spec in Haskell";
        description = "Data type of HAR spec";
        buildType = "Simple";
      };
      components = {
        har = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
          ];
        };
      };
    }