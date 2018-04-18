{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gstvideo";
          version = "1.0.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GStreamerVideo bindings";
        description = "Bindings for GStreamerVideo, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-gstvideo = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gst
            hsPkgs.gi-gstbase
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }