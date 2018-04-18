{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tls-session-manager";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kazu@iij.ad.jp";
        author = "Kazu Yamamoto";
        homepage = "";
        url = "";
        synopsis = "In-memory TLS session manager";
        description = "TLS session manager with limitation, automatic pruning, energy saving and replay resistance";
        buildType = "Simple";
      };
      components = {
        tls-session-manager = {
          depends  = [
            hsPkgs.base
            hsPkgs.auto-update
            hsPkgs.clock
            hsPkgs.psqueues
            hsPkgs.time
            hsPkgs.tls
          ];
        };
      };
    }