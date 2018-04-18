{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contstuff-monads-tf";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "ContStuff instances for monads-tf transformers";
        description = "This package provides contstuff transformer class instances for the\nmonad transformers from the monads-tf package as well as monads-tf\ntransformer class instances for the monad transformers from\ncontstuff.  This makes using both transformer libraries in a single\nproject much more convenient as you get along with a single set of\nlifting functions.";
        buildType = "Simple";
      };
      components = {
        contstuff-monads-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.contstuff
            hsPkgs.monads-tf
          ];
        };
      };
    }