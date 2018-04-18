{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-string-random";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016- hiratara";
        maintainer = "hiratara@cpan.org";
        author = "Masahiro Honma";
        homepage = "https://github.com/hiratara/hs-string-random#readme";
        url = "";
        synopsis = "Helper to build generators with Text.StringRandom";
        description = "Define a generator of Text that matches regular\nexpressions. This package is useful for creating Arbitrary\ninstances of Text type restricted by newtype.";
        buildType = "Simple";
      };
      components = {
        quickcheck-string-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.string-random
            hsPkgs.text
          ];
        };
        tests = {
          quickcheck-string-random-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-string-random
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
      };
    }