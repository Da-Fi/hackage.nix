{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "MonadPrompt";
          version = "1.0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Ryan Ingram & Bertram Felgenhauer & Cale Gibbard";
        maintainer = "ryani.spam@gmail.com";
        author = "Ryan Ingram";
        homepage = "";
        url = "";
        synopsis = "MonadPrompt, implementation & examples";
        description = "\\\"Prompting\\\" monad that allows splitting the description\nof a computation from the implementation of the effects\nused in that computation.\n<http://www.haskell.org/pipermail/haskell-cafe/2008-January/038301.html>";
        buildType = "Simple";
      };
      components = {
        MonadPrompt = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }