{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-callbacks";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "";
        url = "";
        synopsis = "Mutable memory locations with callbacks";
        description = "Mutable memory locations with handlers that are executed when the\nshared values are modified.";
        buildType = "Simple";
      };
      components = {
        keera-callbacks = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }