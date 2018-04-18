{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-happstack";
          version = "0.23.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Adds support for using web-routes with Happstack";
        description = "Added Happstack class instances for RouteT. Provides a default router for Site.";
        buildType = "Simple";
      };
      components = {
        web-routes-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.happstack-server
            hsPkgs.text
            hsPkgs.web-routes
          ];
        };
      };
    }