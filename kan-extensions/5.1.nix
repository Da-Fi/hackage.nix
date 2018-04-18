{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kan-extensions";
          version = "5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/kan-extensions/";
        url = "";
        synopsis = "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads";
        description = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.";
        buildType = "Simple";
      };
      components = {
        kan-extensions = {
          depends  = [
            hsPkgs.adjunctions
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.fail
            hsPkgs.free
            hsPkgs.mtl
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
      };
    }