{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Slides";
          version = "0.1.0.7";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lukahorvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "";
        url = "";
        synopsis = "Generate slides from Haskell code";
        description = "Make presentations in Haskell with diagrams";
        buildType = "Simple";
      };
      components = {
        Slides = {
          depends  = [
            hsPkgs.base
            hsPkgs.diagrams-svg
            hsPkgs.colour
            hsPkgs.file-embed
            hsPkgs.regex-applicative
            hsPkgs.diagrams-lib
          ];
        };
        tests = {
          sample = {
            depends  = [
              hsPkgs.base
              hsPkgs.file-embed
              hsPkgs.Slides
            ];
          };
        };
      };
    }