{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo-launcher";
          version = "2009.5.22.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/bamboo-launcher/tree/master";
        url = "";
        synopsis = "bamboo-launcher";
        description = "A standalone bamboo launcher to simplify deployment.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bamboo = {
            depends  = [
              hsPkgs.base
              hsPkgs.hack
              hsPkgs.hack-contrib
              hsPkgs.bamboo
              hsPkgs.hack-handler-happstack
              hsPkgs.mps
              hsPkgs.utf8-prelude
              hsPkgs.process
              hsPkgs.haskell98
            ];
          };
        };
      };
    }