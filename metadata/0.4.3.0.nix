{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "metadata";
          version = "0.4.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "cutsea110";
        homepage = "https://github.com/cutsea110/metadata";
        url = "";
        synopsis = "metadata library for semantic web";
        description = "metadata library for semantic web (schema.org)";
        buildType = "Simple";
      };
      components = {
        metadata = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }