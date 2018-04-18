{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes";
          version = "0.26.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for maintaining correctness and composability of URLs within an application.";
        description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
        buildType = "Simple";
      };
      components = {
        web-routes = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }