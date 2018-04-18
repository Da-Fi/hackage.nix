{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clckwrks-theme-bootstrap";
          version = "0.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.clckwrks.com/";
        url = "";
        synopsis = "simple bootstrap based template for clckwrks";
        description = "";
        buildType = "Simple";
      };
      components = {
        clckwrks-theme-bootstrap = {
          depends  = [
            hsPkgs.base
            hsPkgs.clckwrks
            hsPkgs.hsp
            hsPkgs.text
          ];
        };
      };
    }