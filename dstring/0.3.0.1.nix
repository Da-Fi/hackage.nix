{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dstring";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Difference strings.";
        description = "Difference strings: a data structure for O(1) append on strings. Note that a\nDString is just a newtype wrapper around a 'DList Char'. The reason we need a\nnew type instead of just a type synonym is that we can have an 'instance\nIsString DString' without using language extensions (TypeSynonymInstances or\nFlexibleInstances) so we can write overloaded string literals of type DString.";
        buildType = "Simple";
      };
      components = {
        dstring = {
          depends  = [
            hsPkgs.base
            hsPkgs.dlist
            hsPkgs.to-string-class
          ];
        };
      };
    }