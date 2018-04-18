{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "atomic-primops";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "Ryan Newton";
        homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
        url = "";
        synopsis = "A safe approach to CAS and other atomic ops in Haskell.";
        description = "WARNING: Your program MUST be built with \"ghc -threaded\" if you depend on this library.\nThe library depends on threaded Haskell RTS, which is only conditionally linked.\nIf you don't do this you will see an error at link time about \"cas\" being missing.\n\nAfter GHC 7.4 a new `casMutVar#` primop became available, but it's\ndifficult to use safely, because pointer equality is a highly\nunstable property in Haskell.  This library provides a safer method\nbased on the concept of \"Tickets\".\n\nAlso, this library uses the \"foreign primop\" capability of GHC to\nadd access to other variants that may be of\ninterest, specifically, compare and swap inside an array.";
        buildType = "Custom";
      };
      components = {
        atomic-primops = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.Cabal
            hsPkgs.bits-atomic
          ];
        };
      };
    }