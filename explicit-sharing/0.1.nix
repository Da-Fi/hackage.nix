{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "explicit-sharing";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "sebf@informatik.uni-kiel.de";
        author = "Chung-chieh Shan, Oleg Kiselyov, and Sebastian Fischer";
        homepage = "";
        url = "";
        synopsis = "Explicit Sharing of Monadic Effects";
        description = "This package implements a monad transformer for sharing monadic\neffects of monads for non-determinism.";
        buildType = "Custom";
      };
      components = {
        explicit-sharing = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }