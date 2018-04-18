{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Codec-Image-DevIL";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "An FFI interface to the DevIL library";
        description = "Provides a very simple interface to the DevIL image library.\nProvides functions readImage and writeImage, which can read\nand write many image formats from/to an RGBA array of values\nto work with.";
        buildType = "Simple";
      };
      components = {
        Codec-Image-DevIL = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
          libs = [ pkgs.IL pkgs.rt ];
        };
      };
    }