{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-wai";
          version = "0.24.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for maintaining correctness of URLs within an application.";
        description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
        buildType = "Simple";
      };
      components = {
        web-routes-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.web-routes
          ];
        };
      };
    }