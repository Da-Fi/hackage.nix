{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hcwiid";
          version = "0.0.4";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
        author = "Kiwamu Okabe <kiwamu@debian.or.jp>, Ivan Perez <ivan.perez@keera.co.uk>";
        homepage = "https://github.com/ivanperez-keera/hcwiid";
        url = "";
        synopsis = "Library to interface with the wiimote";
        description = "HCWiid is a working userspace driver along with various\napplications implementing event drivers, multiple\nwiimote\tconnectivity, gesture recognition,\nand other Wiimote-based functionality.";
        buildType = "Simple";
      };
      components = {
        hcwiid = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
          libs = [
            pkgs.bluetooth
            pkgs.cwiid
          ];
        };
      };
    }