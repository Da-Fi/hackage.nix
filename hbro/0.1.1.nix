{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hbro";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "";
        url = "";
        synopsis = "A suckless minimal KISSy browser";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          hbro = {
            depends  = [
              hsPkgs.base
              hsPkgs.webkit
              hsPkgs.gtk
              hsPkgs.glade
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.dyre
              hsPkgs.process
              hsPkgs.url
            ];
          };
        };
      };
    }