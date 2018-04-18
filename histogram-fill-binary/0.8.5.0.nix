{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "histogram-fill-binary";
          version = "0.8.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov";
        homepage = "https://github.com/Shimuuar/histogram-fill/";
        url = "";
        synopsis = "Binary instances for histogram-fill package";
        description = "Binary instances for histogram-fill package";
        buildType = "Simple";
      };
      components = {
        histogram-fill-binary = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.vector
            hsPkgs.histogram-fill
          ];
        };
      };
    }