{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      enable-overloading = true;
    } // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gstbase";
          version = "1.0.15";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GStreamerBase bindings";
        description = "Bindings for GStreamerBase, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-gstbase = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.gi-gst
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ [
            hsPkgs.haskell-gi-overloading
          ];
        };
      };
    }