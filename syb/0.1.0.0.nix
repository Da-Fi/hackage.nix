{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "syb";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "generics@haskell.org";
        author = "Ralf LÃ¤mmel, Simon Peyton Jones";
        homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/SYB";
        url = "";
        synopsis = "Scrap Your Boilerplate";
        description = "This package contains the generics system described in the\n/Scrap Your Boilerplate/ papers (see <http://www.cs.vu.nl/boilerplate/>).\nIt defines the @Data@ class of types permitting folding and unfolding\nof constructor applications, instances of this class for primitive\ntypes, and a variety of traversals.";
        buildType = "Simple";
      };
      components = {
        syb = {
          depends  = [ hsPkgs.base ];
        };
      };
    }