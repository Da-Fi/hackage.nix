{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gloss-banana";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "James ‘Twey’ Kay <twey@twey.co.uk>";
        author = "James ‘Twey’ Kay";
        homepage = "https://github.com/Twey/gloss-banana";
        url = "";
        synopsis = "An Interface for gloss in terms of a reactive-banana Behavior.";
        description = "This package exports a simple wrapper, in terms of\nGraphics.Gloss.Interface.IO.Game, that allows full\ncontrol of the picture generated by Gloss as a\nBehavior, as well as providing access to\nGloss' clock and input-handling functionality as\nEvents.";
        buildType = "Simple";
      };
      components = {
        gloss-banana = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
            hsPkgs.reactive-banana
          ];
        };
      };
    }