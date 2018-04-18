{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "universe";
          version = "0.4.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Daniel Wagner";
        maintainer = "daniel@wagner-home.com";
        author = "Daniel Wagner";
        homepage = "";
        url = "";
        synopsis = "Classes for types where we know all the values";
        description = "Munge finite and recursively enumerable types";
        buildType = "Simple";
      };
      components = {
        universe = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.keys
            hsPkgs.mtl
            hsPkgs.representable-functors
            hsPkgs.transformers
            hsPkgs.void
          ];
        };
      };
    }