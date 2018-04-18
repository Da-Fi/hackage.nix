{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diagrams-core";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Core libraries for diagrams EDSL";
        description = "The core modules underlying diagrams,\nan embedded domain-specific language\nfor compositional, declarative drawing.";
        buildType = "Simple";
      };
      components = {
        diagrams-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.vector-space
            hsPkgs.MemoTrie
            hsPkgs.newtype
          ];
        };
      };
    }