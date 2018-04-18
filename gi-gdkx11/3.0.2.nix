{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gdkx11";
          version = "3.0.2";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GdkX11 bindings";
        description = "Bindings for GdkX11, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-gdkx11 = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-gobject
            hsPkgs.gi-gdk
            hsPkgs.gi-gio
            hsPkgs.gi-xlib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.haskell-gi-overloading;
        };
      };
    }