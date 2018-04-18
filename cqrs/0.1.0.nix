{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "cqrs";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Command-Query Responsibility Segregation";
        description = "Haskell implementation of the CQRS architectural pattern.\nAn SQLite3-based backend is included.";
        buildType = "Simple";
      };
      components = {
        cqrs = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.direct-sqlite
            hsPkgs.transformers
          ];
        };
      };
    }