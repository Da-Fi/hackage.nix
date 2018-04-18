{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "parallel";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "parallel programming library";
        description = "This package provides a library for parallel programming.";
        buildType = "Simple";
      };
      components = {
        parallel = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }