{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "ad";
          version = "0.15";
        };
        license = "BSD-3-Clause";
        copyright = "Edward Kmett 2010\nBarak Pearlmutter and Jeffrey Mark Siskind 2008-2009";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Automatic Differentiation";
        description = "Forward, reverse, and higher-order automatic differentiation combinators with a common API.\n\nType-level \\\"branding\\\" is used to prevent the end user from confusing infinitesimals.";
        buildType = "Simple";
      };
      components = {
        ad = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-reify
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.array
          ];
        };
      };
    }