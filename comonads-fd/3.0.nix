{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonads-fd";
          version = "3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonads-fd/";
        url = "";
        synopsis = "Comonad transformers using functional dependencies";
        description = "Comonad transformers using functional dependencies";
        buildType = "Simple";
      };
      components = {
        comonads-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.comonad
            hsPkgs.comonad-transformers
          ];
        };
      };
    }