{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "traypoweroff";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "zhen.sydow@gmail.com";
        author = "Luis Cabellos";
        homepage = "http://projects.haskell.org/traypoweroff";
        url = "";
        synopsis = "Tray Icon application to PowerOff / Reboot computer";
        description = "PowerOff Tray Icon";
        buildType = "Simple";
      };
      components = {
        exes = {
          traypoweroff = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.process
            ];
          };
        };
      };
    }