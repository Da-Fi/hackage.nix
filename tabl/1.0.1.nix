{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tabl";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daniel Lovasko";
        maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        homepage = "https://github.com/lovasko/tabl";
        url = "";
        synopsis = "Table layout";
        description = "Text.Tabl arranges multiple Text instances into a\ntable layout while providing means of alignment\nvisual decoration both horizontally and vertically.";
        buildType = "Simple";
      };
      components = {
        tabl = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.text
          ];
        };
        exes = {
          tabl-example-users = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.tabl
              hsPkgs.text
            ];
          };
          tabl-example-multiply = {
            depends  = [
              hsPkgs.base
              hsPkgs.tabl
              hsPkgs.text
            ];
          };
          tabl-example-tictactoe = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.tabl
              hsPkgs.text
            ];
          };
          tabl-example-constants = {
            depends  = [
              hsPkgs.base
              hsPkgs.tabl
              hsPkgs.text
            ];
          };
        };
      };
    }