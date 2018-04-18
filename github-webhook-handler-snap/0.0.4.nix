{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-webhook-handler-snap";
          version = "0.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "GitHub WebHook Handler implementation for Snap";
        description = "...";
        buildType = "Simple";
      };
      components = {
        github-webhook-handler-snap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.snap-core
            hsPkgs.uuid
            hsPkgs.github-types
            hsPkgs.github-webhook-handler
          ];
        };
      };
    }