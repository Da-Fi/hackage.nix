{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-loader-static";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Carl Howells";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Snap static loader";
        description = "Snap Framework static loader";
        buildType = "Simple";
      };
      components = {
        snap-loader-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }