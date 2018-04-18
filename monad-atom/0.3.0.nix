{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "monad-atom";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gchrupala@lsv.uni-saarland.de";
        author = "Grzegorz Chrupała";
        homepage = "";
        url = "";
        synopsis = "Monadically convert objects to unique atoms and back.";
        description = "Monadically convert objects to unique atoms and back.";
        buildType = "Simple";
      };
      components = {
        monad-atom = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }