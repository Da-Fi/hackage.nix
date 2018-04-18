{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rezoom";
          version = "0.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Joel Taylor <barebonesgraphics@gmail.com>";
        author = "Joel Taylor";
        homepage = "";
        url = "";
        synopsis = "Github resume generator";
        description = "Generates a resume from your github page.";
        buildType = "Simple";
      };
      components = {
        exes = {
          rezoom = {
            depends  = [
              hsPkgs.base
              hsPkgs.json
              hsPkgs.xhtml
              hsPkgs.HTTP
              hsPkgs.nano-md5
              hsPkgs.bytestring
              hsPkgs.datetime
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
      };
    }