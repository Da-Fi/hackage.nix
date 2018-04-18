{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-launch";
          version = "2.0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "";
        url = "";
        synopsis = "Launch a web app in the default browser.";
        description = "This handles cross-platform launching and inserts Javascript code to ping the server. When the server no longer receives pings, it shuts down.";
        buildType = "Simple";
      };
      components = {
        wai-handler-launch = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.blaze-builder-conduit
            hsPkgs.zlib-conduit
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.process;
          libs = pkgs.lib.optional system.isWindows pkgs.Shell32;
        };
      };
    }