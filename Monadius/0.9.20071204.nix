{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Monadius";
          version = "0.9.20071204";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
        author = "Hideyuki Tanaka & Takayuki Muranushi";
        homepage = "";
        url = "";
        synopsis = "2-D arcade scroller";
        description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius.";
        buildType = "Simple";
      };
      components = {
        exes = {
          monadius = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
              hsPkgs.OpenGL
              hsPkgs.array
              hsPkgs.directory
            ];
          };
        };
      };
    }