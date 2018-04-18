{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "monadiccp";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tom.schrijvers@cs.kuleuven.be";
        author = "Tom Schrijvers";
        homepage = "";
        url = "";
        synopsis = "Package for Constraint Programming";
        description = "Monadic Constraint Programming framework";
        buildType = "Simple";
      };
      components = {
        monadiccp = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.random
          ];
        };
      };
    }