{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-dejafu";
          version = "0.7.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mike@barrucadu.co.uk";
        author = "Michael Walker";
        homepage = "https://github.com/barrucadu/dejafu";
        url = "";
        synopsis = "Deja Fu support for the Tasty test framework.";
        description = "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>\nlibrary for concurrency testing and\n<https://hackage.haskell.org/package/tasty tasty>. This lets you\neasily incorporate concurrency testing into your existing test\nsuites.";
        buildType = "Simple";
      };
      components = {
        tasty-dejafu = {
          depends  = [
            hsPkgs.base
            hsPkgs.dejafu
            hsPkgs.random
            hsPkgs.tagged
            hsPkgs.tasty
          ];
        };
      };
    }