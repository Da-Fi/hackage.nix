{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "funnyprint";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Yuriy Pitomets";
        author = "";
        homepage = "https://github.com/Pitometsu/funnyprint#readme";
        url = "";
        synopsis = "funnyPrint function to colorize GHCi output.";
        description = "see FunnyPrint.funnyPrint.";
        buildType = "Simple";
      };
      components = {
        funnyprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.hscolour
            hsPkgs.ipprint
            hsPkgs.text
          ];
        };
        tests = {
          funnyprint-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hscolour
              hsPkgs.ipprint
              hsPkgs.text
              hsPkgs.funnyprint
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
        benchmarks = {
          funnyprint-benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.hscolour
              hsPkgs.ipprint
              hsPkgs.text
              hsPkgs.funnyprint
              hsPkgs.criterion
            ];
          };
        };
      };
    }