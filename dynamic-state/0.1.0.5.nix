{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dynamic-state";
          version = "0.1.0.5";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "zcarterc@gmail.com";
        author = "Carter Charbonneau";
        homepage = "";
        url = "";
        synopsis = "Optionally serializable dynamic state keyed by type";
        description = "Optionally serializable dynamic state keyed by type";
        buildType = "Simple";
      };
      components = {
        dynamic-state = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.concrete-typerep
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }