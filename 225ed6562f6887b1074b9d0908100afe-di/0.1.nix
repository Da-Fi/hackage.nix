{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "di";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2017";
        maintainer = "renλren.zone";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/di";
        url = "";
        synopsis = "Easy and powerful typeful logging without monad towers.";
        description = "Easy and powerful typeful logging without monad towers.";
        buildType = "Simple";
      };
      components = {
        di = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }