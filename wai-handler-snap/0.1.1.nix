{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-snap";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/wai-handler-snap";
        url = "";
        synopsis = "Web Application Interface handler using snap-server. (deprecated)";
        description = "";
        buildType = "Simple";
      };
      components = {
        wai-handler-snap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.enumerator
          ];
        };
      };
    }