{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "syb-with-class";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2004 - 2007 The University of Glasgow, CWI,\nSimon Peyton Jones, Ralf Laemmel,\nUlf Norell, Sean Seefried, Simon D. Foster,\nHAppS LLC";
        maintainer = "AlexJacobson@HAppS.org";
        author = "Simon Peyton Jones, Ralf Laemmel";
        homepage = "";
        url = "";
        synopsis = "Scrap Your Boilerplate With Class";
        description = "Classes, and Template Haskell code to generate instances, for the\nScrap Your Boilerplate With Class system.";
        buildType = "Simple";
      };
      components = {
        syb-with-class = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
      };
    }