{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unicode";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/unicode/";
        url = "";
        synopsis = "Construct and transform unicode characters";
        description = "The package contains functions for construction\nof various characters like:\n\n* block graphic elements\n\n* frame elements\n\n* fractions\n\n* subscript and superscript characters\n\nRelated packages:\n\n* @unicode-properties@: classifications such as lower case, graphical etc.\n\n* @rfc5051@: sorting of characters";
        buildType = "Simple";
      };
      components = {
        unicode = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
          ];
        };
        exes = {
          visualize-unicode = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.unicode
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.unicode
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }