{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DBus";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexander Kojevnikov <alexander@kojevnikov.com>";
        author = "Evan Martin, David Himmelstrup";
        homepage = "https://github.com/alexkay/hdbus";
        url = "";
        synopsis = "D-Bus bindings";
        description = "Bindings for the D-Bus API.\nFor details on D-Bus, see the D-Bus wiki at:\n<http://www.freedesktop.org/wiki/Software/dbus>";
        buildType = "Configure";
      };
      components = {
        DBus = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }