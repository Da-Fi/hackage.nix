{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Hieroglyph";
          version = "3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "J.R. Heard";
        author = "J.R. Heard";
        homepage = "http://vis.renci.org/jeff/hieroglyph";
        url = "";
        synopsis = "Purely functional 2D drawing";
        description = "A purely functional 2D scenegraph library with functionality similar to a barebones Processing.\nCurrently entirely implmeneted using Cairo, although I would like to go to OpenGL as well.";
        buildType = "Simple";
      };
      components = {
        Hieroglyph = {
          depends  = [
            hsPkgs.IfElse
            hsPkgs.OpenGL
            hsPkgs.array
            hsPkgs.base
            hsPkgs.buster
            hsPkgs.bytestring
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.gtk
            hsPkgs.gtkglext
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.pretty
            hsPkgs.random
            hsPkgs.glib
            hsPkgs.buster-gtk
          ];
        };
      };
    }