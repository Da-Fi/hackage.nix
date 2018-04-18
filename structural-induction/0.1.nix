{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "structural-induction";
          version = "0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "Dan Rosén <danr@chalmers.se>";
        author = "Dan Rosén";
        homepage = "http://www.github.com/danr/structural-induction";
        url = "";
        synopsis = "Instantiate structural induction schemas for algebraic data types";
        description = "See documentation for Induction.Structural";
        buildType = "Simple";
      };
      components = {
        structural-induction = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.safe
          ];
        };
        tests = {
          walk = {
            depends  = [
              hsPkgs.structural-induction
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.language-haskell-extract
              hsPkgs.testing-feat
              hsPkgs.geniplate
              hsPkgs.safe
            ];
          };
        };
      };
    }