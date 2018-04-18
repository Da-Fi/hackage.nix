{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-glib";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings-glib";
        url = "";
        synopsis = "Low level bindings to GLib.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-glib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }