{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network";
          version = "2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johan Tibell <johan.tibell@gmail.com>";
        author = "";
        homepage = "http://github.com/haskell/network";
        url = "";
        synopsis = "Low-level networking interface";
        description = "Low-level networking interface";
        buildType = "Configure";
      };
      components = {
        network = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ [
            hsPkgs.base
          ];
        };
      };
    }