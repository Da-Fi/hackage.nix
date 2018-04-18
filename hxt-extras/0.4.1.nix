{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hxt-extras";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Tony Morris";
        maintainer = "ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ";
        author = "Tony Morris";
        homepage = "http://code.google.com/p/hxt-extras/";
        url = "";
        synopsis = "Extra functions for HXT";
        description = "Extra library functionality for HXT";
        buildType = "Simple";
      };
      components = {
        hxt-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
          ];
        };
      };
    }