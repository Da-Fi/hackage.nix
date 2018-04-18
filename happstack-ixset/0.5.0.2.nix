{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-ixset";
          version = "0.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "Efficient relational queries on Haskell sets.";
        description = "Just pick which parts of your data structures you want indexed using an easy to use template-haskell function. Spare yourself the need to write, run, and maintain code that marshalls your data to/from an external relational database just for efficient queries. happstack-ixset relies on generics and TH to spare you the boilerplate normally required for such tasks.";
        buildType = "Simple";
      };
      components = {
        happstack-ixset = {
          depends  = (([
            hsPkgs.containers
            hsPkgs.happstack-data
            hsPkgs.happstack-util
            hsPkgs.mtl
            hsPkgs.syb-with-class
            hsPkgs.template-haskell
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ])) ++ [
            hsPkgs.syb-with-class
          ]) ++ optionals _flags.tests [
            hsPkgs.QuickCheck
            hsPkgs.HUnit
          ];
        };
        exes = {
          happstack-ixset-tests = {
            depends  = optionals _flags.tests [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }