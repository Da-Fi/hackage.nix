{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-conduit";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/http-client";
        url = "";
        synopsis = "Frontend support for using http-client with conduit (deprecated)";
        description = "Intended for use by higher-level libraries, such as http-conduit.";
        buildType = "Simple";
      };
      components = {
        http-client-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
          ];
        };
      };
    }