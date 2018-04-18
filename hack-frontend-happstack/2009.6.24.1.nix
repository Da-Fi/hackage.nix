{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-frontend-happstack";
          version = "2009.6.24.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "hack-frontend-happstack";
        description = "Allows programs written against happstack-server to run with any hack handler.";
        buildType = "Simple";
      };
      components = {
        hack-frontend-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.happstack-server
            hsPkgs.hack
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.utf8-string
          ];
        };
      };
    }