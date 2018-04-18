{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "euler";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "luis@decomputed.com";
        author = "Luis Rodrigues Soares";
        homepage = "https://github.com/decomputed/euler";
        url = "";
        synopsis = "Mathematics utilities for Haskell";
        description = "Mathematics utilities and functions for Haskell, currently aimed at solving problems in Project Euler.";
        buildType = "Simple";
      };
      components = {
        euler = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.euler
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.QuickCheck
            ];
          };
          hpc = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.xml
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          haddock = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.regex-posix
            ];
          };
        };
        benchmarks = {
          criterion = {
            depends  = [
              hsPkgs.base
              hsPkgs.euler
              hsPkgs.criterion
            ];
          };
        };
      };
    }