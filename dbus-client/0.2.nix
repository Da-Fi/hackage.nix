{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dbus-client";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "";
        url = "";
        synopsis = "D-Bus client libraries";
        description = "Connect and interact with the D-Bus IPC system.";
        buildType = "Simple";
      };
      components = {
        dbus-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.dbus-core
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }