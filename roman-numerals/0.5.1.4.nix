{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "roman-numerals";
          version = "0.5.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "2009–2014 Roel van Dijk";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>";
        homepage = "https://github.com/roelvandijk/roman-numerals";
        url = "";
        synopsis = "Parsing and pretty printing of Roman numerals";
        description = "This library provides functions for parsing and pretty printing\nRoman numerals. Because the notation of Roman numerals has varied\nthrough the centuries this package allows for some customisation\nusing a configuration that is passed to the conversion functions.";
        buildType = "Simple";
      };
      components = {
        roman-numerals = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }