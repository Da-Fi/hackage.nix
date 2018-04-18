{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-pony-transformer-startline";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nfjinjing@gmail.com";
        author = "Jinjing Wang";
        homepage = "";
        url = "";
        synopsis = "transform HTTP startlines to tuples";
        description = "";
        buildType = "Simple";
      };
      components = {
        http-pony-transformer-startline = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.lens
          ];
        };
      };
    }