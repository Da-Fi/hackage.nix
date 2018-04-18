{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
    } // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-atk";
          version = "2.0.6";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Atk bindings";
        description = "Bindings for Atk, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-atk = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }