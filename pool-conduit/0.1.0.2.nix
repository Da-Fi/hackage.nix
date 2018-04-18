{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pool-conduit";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Resource pool allocations via ResourceT.";
        description = "Allocate resources from a pool, guaranteeing resource handling via the ResourceT transformer.";
        buildType = "Simple";
      };
      components = {
        pool-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.resource-pool
            hsPkgs.transformers
            hsPkgs.resourcet
          ];
        };
      };
    }