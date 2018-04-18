{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "derp-lib";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kya@pdx.edu";
        author = "Ahn, Ki Yung";
        homepage = "http://darcsden.com/kyagrd/derp-lib";
        url = "";
        synopsis = "combinators based on parsing with derivatives (derp) package";
        description = "";
        buildType = "Simple";
      };
      components = {
        derp-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.derp
          ];
        };
      };
    }