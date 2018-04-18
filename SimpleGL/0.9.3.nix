{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SimpleGL";
          version = "0.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "";
        url = "";
        synopsis = "A Simple Graphics Library from the SimpleH framework.";
        description = "synopsis: A Simple Graphics Library from the SimpleH framework.";
        buildType = "Simple";
      };
      components = {
        SimpleGL = {
          depends  = [
            hsPkgs.base
            hsPkgs.SimpleH
            hsPkgs.GLFW
            hsPkgs.OpenGL
            hsPkgs.JuicyPixels
            hsPkgs.vector
          ];
        };
      };
    }