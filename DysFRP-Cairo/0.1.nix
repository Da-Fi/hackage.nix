{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "DysFRP-Cairo";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marek Materzok";
        author = "Marek Materzok";
        homepage = "https://github.com/tilk/DysFRP";
        url = "";
        synopsis = "dysFunctional Reactive Programming on Cairo";
        description = "Simple Cairo bindings for DysFRP.";
        buildType = "Simple";
      };
      components = {
        DysFRP-Cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.mtl
            hsPkgs.DysFRP
          ];
        };
      };
    }