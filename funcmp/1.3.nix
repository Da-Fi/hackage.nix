{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "funcmp";
          version = "1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Meik Hellmund, Ralf Hinze, Joachim Korittky,\nMarco Kuhlmann, Ferenc Wágner, Peter Simons";
        homepage = "http://cryp.to/funcmp/";
        url = "";
        synopsis = "Functional MetaPost";
        description = "Functional MetaPost is a Haskell frontend to the\nMetaPost language by John Hobby. Users write their\ngraphics as Haskell programs, which then emit MetaPost\ncode that can be compiled into encapsulated PostScript\nfiles and smoothly included into e.g. LaTeX.\n\nA collection of useful examples how to use Functional\nMetaPost can be found in the user's manual at\n<http://cryp.to/funcmp/legacy-doc/Manual_eng.ps>. The\ndocument doesn't offer very much detail in terms of\nexplanations, but the code samples are quite helpful.\n\nFurther documentation can be found in the original\nthesis that describes the implementation. The text is\navailable in German at\n<http://cryp.to/funcmp/legacy-doc/Thesis.ps> and in\nEnglish at\n<http://cryp.to/funcmp/legacy-doc/Thesis_eng.ps>.\n\nLast but not least, there is a tutorial that offers many\nhelpful examples available in German at\n<http://cryp.to/funcmp/legacy-doc/Tutorial.ps> and in\nEnglish at\n<http://cryp.to/funcmp/legacy-doc/Tutorial_eng.ps>.";
        buildType = "Simple";
      };
      components = {
        funcmp = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
          ];
        };
      };
    }