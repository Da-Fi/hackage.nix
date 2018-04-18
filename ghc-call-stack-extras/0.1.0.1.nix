{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-call-stack-extras";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 David Feuer";
        maintainer = "David.Feuer@gmail.com";
        author = "David Feuer";
        homepage = "https://github.com/treeowl/ghc-call-stack-extras";
        url = "";
        synopsis = "Extra utilities for HasCallStack";
        description = "";
        buildType = "Simple";
      };
      components = {
        ghc-call-stack-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }