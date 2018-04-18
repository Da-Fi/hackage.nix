{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "papa-implement";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/data61/papa";
        url = "";
        synopsis = "Reasonable default import";
        description = "Reasonable default import";
        buildType = "Custom";
      };
      components = {
        papa-implement = {
          depends  = [
            hsPkgs.base
            hsPkgs.papa-base-implement
            hsPkgs.papa-bifunctors-implement
            hsPkgs.papa-lens-implement
            hsPkgs.papa-semigroupoids-implement
            hsPkgs.semigroupoids
            hsPkgs.lens
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