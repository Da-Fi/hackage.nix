{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stream-monad";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Sebastian Fischer (sebf@informatik.uni-kiel.de)";
        author = "Oleg Kiselyov";
        homepage = "http://github.com/sebfisch/stream-monad";
        url = "";
        synopsis = "Simple, Fair and Terminating Backtracking Monad";
        description = "This Haskell library provides an implementation of the\nMonadPlus type class that enumerates results of a\nnon-deterministic computation by interleaving\nsubcomputations in a way that has usually much better\nmemory performance than other strategies with the same\ntermination properties.";
        buildType = "Simple";
      };
      components = {
        stream-monad = {
          depends  = [ hsPkgs.base ];
        };
      };
    }