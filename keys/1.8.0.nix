{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "keys";
          version = "1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/keys/";
        url = "";
        synopsis = "Keyed functors and containers";
        description = "Keyed functors and containers";
        buildType = "Simple";
      };
      components = {
        keys = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.comonad-transformers
            hsPkgs.comonads-fd
            hsPkgs.free
          ];
        };
      };
    }