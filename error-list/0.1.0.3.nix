{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "error-list";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ithinkican@gmail.com";
        author = "Allen Nelson";
        homepage = "http://github.com/thinkpad20/error-list";
        url = "";
        synopsis = "A useful type for collecting error messages.";
        description = "";
        buildType = "Simple";
      };
      components = {
        error-list = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.text-render
          ];
        };
      };
    }