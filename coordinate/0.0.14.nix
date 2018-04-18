{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "coordinate";
          version = "0.0.14";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013-2014 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/coordinate";
        url = "";
        synopsis = "A representation of latitude and longitude";
        description = "A representation of latitude and longitude";
        buildType = "Custom";
      };
      components = {
        coordinate = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }