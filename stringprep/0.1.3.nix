{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stringprep";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard <porges@porg.es>";
        homepage = "";
        url = "";
        synopsis = "Implements the \"StringPrep\" algorithm";
        description = "Implements the \"StringPrep\" algorithm";
        buildType = "Simple";
      };
      components = {
        stringprep = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ranges
            hsPkgs.stream-fusion
            hsPkgs.text-icu
            hsPkgs.text
          ];
        };
      };
    }