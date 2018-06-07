{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-dbusmenugtk3";
          version = "0.4.2";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "DbusmenuGtk bindings";
        description = "Bindings for libdbusgtk3, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-dbusmenugtk3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gtk
            hsPkgs.gi-dbusmenu
            hsPkgs.gi-atk
            hsPkgs.gi-gdk
            hsPkgs.gi-gdkpixbuf
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.haskell-gi-overloading;
          pkgconfig = [
            pkgconfPkgs."dbusmenu-gtk3-0.4"
            pkgconfPkgs."gtk+-3.0"
          ];
        };
      };
    }