{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "c-storable";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Laforge <qdunkan@gmail.com>";
        author = "Evan Laforge";
        homepage = "https://github.com/elaforge/c-storable";
        url = "";
        synopsis = "CStorable class";
        description = "Replacement for Storable class that omits non-C types";
        buildType = "Simple";
      };
      components = {
        c-storable = {
          depends  = [ hsPkgs.base ];
        };
      };
    }