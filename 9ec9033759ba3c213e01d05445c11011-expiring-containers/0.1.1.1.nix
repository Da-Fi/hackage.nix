{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "expiring-containers";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Oleg Shevchenko <shevchenko.cmc@gmail.com>";
        homepage = "https://github.com/metrix-ai/expiring-containers";
        url = "";
        synopsis = "Expiring containers";
        description = "";
        buildType = "Simple";
      };
      components = {
        expiring-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.hashable
            hsPkgs.timestamp
            hsPkgs.containers
            hsPkgs.int-multimap
            hsPkgs.unordered-containers
          ];
        };
      };
    }