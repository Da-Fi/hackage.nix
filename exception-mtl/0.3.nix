{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "exception-mtl";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2011 Harvard University";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "Exception monad transformer instances for mtl2 classes.";
        description = "This package provides exception monad transformer instances for\nthe classes defined by mtl2.";
        buildType = "Simple";
      };
      components = {
        exception-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.exception-transformers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }