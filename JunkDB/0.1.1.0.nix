{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "JunkDB";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "seagull.kamome@gmail.com";
        author = "HATTORI, Hiroki";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Generic KVS API";
        buildType = "Simple";
      };
      components = {
        JunkDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.conduit
            hsPkgs.aeson
            hsPkgs.resourcet
          ];
        };
      };
    }