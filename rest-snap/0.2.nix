{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-snap";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Rest driver for Snap.";
        description = "Rest driver for Snap.";
        buildType = "Simple";
      };
      components = {
        rest-snap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.rest-core
            hsPkgs.safe
            hsPkgs.snap-core
            hsPkgs.unordered-containers
            hsPkgs.uri-encode
            hsPkgs.utf8-string
          ];
        };
      };
    }