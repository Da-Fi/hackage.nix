{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nanq";
          version = "2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/nanq";
        url = "";
        synopsis = "Performs 漢字検定 (National Kanji Exam) level analysis on given Kanji.";
        description = "`nanq` can inform the user of a number of statistics\nregarding Kanji and the Nation Kanji Examination, also\nknown as 漢字検定 or 漢検. In the most simple case,\nit will reveal what inputed Kanji belong to what\nLevel of the exam.";
        buildType = "Simple";
      };
      components = {
        nanq = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.microlens
            hsPkgs.text
          ];
        };
        exes = {
          nanq = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.extensible-effects
              hsPkgs.microlens
              hsPkgs.microlens-aeson
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
      };
    }