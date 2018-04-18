{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dyre = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle";
          version = "0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hoodle";
        url = "";
        synopsis = "Executable for hoodle";
        description = "Hoodle is a pen notetaking program written in haskell.";
        buildType = "Custom";
      };
      components = {
        hoodle = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.configurator
            hsPkgs.hoodle-core
          ] ++ pkgs.lib.optional _flags.dyre hsPkgs.dyre;
        };
        exes = {
          hoodle = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.hoodle-core
              hsPkgs.hoodle
            ];
          };
        };
      };
    }