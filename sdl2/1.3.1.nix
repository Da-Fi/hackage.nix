{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2";
          version = "1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013, 2014  Gabríel Arthúr Pétursson";
        maintainer = "gabriel@system.is";
        author = "Gabríel Arthúr Pétursson";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to SDL2";
        description = "Low-level bindings to the SDL2 library, version 2.0.3.";
        buildType = "Simple";
      };
      components = {
        sdl2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
          libs = [ pkgs.SDL2 ];
        };
      };
    }