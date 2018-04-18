{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dow";
          version = "0.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2011, Patai Gergely";
        maintainer = "Patai Gergely (patai.gergely@gmail.com)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "Dungeons of Wor";
        description = "Dungeons of Wor is a homage to the classic arcade game, Wizard of\nWor.  It uses the artwork and levels from the Astrocade version, but\nthe gameplay mechanics differ from the original in several ways.\n\nThis game is also an experiment in functional reactive programming,\nso it might be a useful resource to anyone interested in this topic.\nIt was coded using the simple version of Elerea, which provides\ndiscrete streams as first-class values.";
        buildType = "Simple";
      };
      components = {
        exes = {
          dow = {
            depends  = [
              hsPkgs.base
              hsPkgs.elerea
              hsPkgs.OpenGL
              hsPkgs.GLFW
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.mersenne-random
            ];
          };
        };
      };
    }