{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "resin";
          version = "0.2.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "carter at wellposed dot com";
        author = "Carter Tazio Schonwald";
        homepage = "http://github.com/cartazio/resin";
        url = "";
        synopsis = "High performance variable binders";
        description = "High Performance Variable Binders library";
        buildType = "Simple";
      };
      components = {
        resin = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.semigroupoids
            hsPkgs.ralist
          ];
        };
      };
    }