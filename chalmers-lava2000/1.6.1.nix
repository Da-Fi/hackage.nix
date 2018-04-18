{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chalmers-lava2000";
          version = "1.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2016 Koen Claessen, Emil Axelsson\n2000-2008 Koen Claessen";
        maintainer = "Emil Axelsson <emax@chalmers.se>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "http://projects.haskell.org/chalmers-lava2000/Doc/tutorial.pdf";
        url = "";
        synopsis = "Hardware description EDSL";
        description = "For more info, see the tutorial: <http://projects.haskell.org/chalmers-lava2000/Doc/tutorial.pdf>";
        buildType = "Simple";
      };
      components = {
        chalmers-lava2000 = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.process
            hsPkgs.random
          ];
        };
      };
    }