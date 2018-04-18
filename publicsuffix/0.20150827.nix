{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "publicsuffix";
          version = "0.20150827";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "https://github.com/wereHamster/publicsuffix-haskell/";
        url = "";
        synopsis = "The publicsuffix list exposed as proper Haskell types";
        description = "This package contains a parsed representation of the publicsuffix list,\nand functions which you can use to query it.\n\nThe package version follows the template @\\<api version\\>.\\<date\\>@ where\n@date@ is when the publicsuffix list was last updated from upstream, in the\nformat @YYYYMMDD@.";
        buildType = "Simple";
      };
      components = {
        publicsuffix = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.template-haskell
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.publicsuffix
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.random
              hsPkgs.publicsuffix
            ];
          };
        };
      };
    }