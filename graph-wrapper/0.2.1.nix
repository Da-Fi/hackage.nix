{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "graph-wrapper";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke";
        homepage = "http://www.github.com/batterseapower/graph-wrapper";
        url = "";
        synopsis = "A wrapper around the standard Data.Graph with a less awkward interface";
        description = "";
        buildType = "Simple";
      };
      components = {
        graph-wrapper = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
          ];
        };
      };
    }