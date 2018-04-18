{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "presburger";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "http://github.com/yav/presburger";
        url = "";
        synopsis = "A decision procedure for quantifier-free linear arithmetic.";
        description = "The decision procedure is based on the algorithm used in\nCVC4, which is itself based on the Omega test.";
        buildType = "Simple";
      };
      components = {
        presburger = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }