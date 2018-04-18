{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "abcnotation";
          version = "1.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Haskell representation and parser for ABC notation.";
        description = "This package contains a Haskell representation and parser for ABC notation.\n\nABC notation is a text-based music notation system designed to be comprehensible by both people and\ncomputers. For more information see <http://abcnotation.com>.\n\nBased on the 2.1 standard.";
        buildType = "Simple";
      };
      components = {
        abcnotation = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.semigroups
            hsPkgs.prettify
            hsPkgs.parsec
            hsPkgs.process
          ];
        };
      };
    }