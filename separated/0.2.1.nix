{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "separated";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/data61/separated";
        url = "";
        synopsis = "A data type with elements separated by values";
        description = "<<http://i.imgur.com/26ltTNG.png>>\n\nA data type with elements separated by values";
        buildType = "Custom";
      };
      components = {
        separated = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
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
              hsPkgs.parsec
            ];
          };
        };
      };
    }