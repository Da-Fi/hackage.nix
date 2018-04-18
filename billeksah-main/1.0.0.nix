{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "billeksah-main";
          version = "1.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Juergen \"jutaro\" Nicklisch-Franken";
        maintainer = "maintainer@leksah.org";
        author = "Juergen \"jutaro\" Nicklisch-Franken";
        homepage = "http://www.leksah.org";
        url = "https://github.com/leksah";
        synopsis = "Leksah plugin base";
        description = "Plugin framework used by leksah";
        buildType = "Simple";
      };
      components = {
        exes = {
          billeksah-main = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.plugins
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.billeksah-services
            ];
          };
        };
      };
    }