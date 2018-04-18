{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Chart-gtk";
          version = "1.7";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2014";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "https://github.com/timbod7/haskell-chart/wiki";
        url = "";
        synopsis = "Utility functions for using the chart library with GTK";
        description = "Utility functions for using the chart library with GTK";
        buildType = "Simple";
      };
      components = {
        Chart-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.cairo
            hsPkgs.data-default-class
            hsPkgs.colour
            hsPkgs.colour
            hsPkgs.gtk
            hsPkgs.Chart
            hsPkgs.Chart-cairo
          ];
        };
      };
    }