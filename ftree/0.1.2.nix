{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ftree";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Depth-typed functor-based trees, both top-down and bottom-up";
        description = "Depth-typed functor-based trees, both top-down and bottom-up";
        buildType = "Simple";
      };
      components = {
        ftree = {
          depends  = [
            hsPkgs.base
            hsPkgs.ShowF
            hsPkgs.type-unary
          ];
        };
      };
    }