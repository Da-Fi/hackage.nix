{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "babl";
          version = "0.0.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "nek0@nek0.eu";
        author = "nek0";
        homepage = "http://github.com/nek0/babl#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        babl = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs."babl-0.1" ];
        };
      };
    }