{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-datastructures";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "";
        url = "";
        synopsis = "";
        description = "This package contains commonly used data structures";
        buildType = "Simple";
      };
      components = {
        HLearn-datastructures = {
          depends  = [
            hsPkgs.HLearn-algebra
            hsPkgs.ConstraintKinds
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.MonadRandom
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.list-extras
          ];
        };
      };
    }