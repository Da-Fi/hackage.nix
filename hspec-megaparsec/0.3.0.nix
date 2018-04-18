{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-megaparsec";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Mark Karpov <markkarpov@opmbx.org>";
        homepage = "https://github.com/mrkkrp/hspec-megaparsec";
        url = "";
        synopsis = "Utility functions for testing Megaparsec parsers with Hspec";
        description = "Utility functions for testing Megaparsec parsers with Hspec.";
        buildType = "Simple";
      };
      components = {
        hspec-megaparsec = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hspec-expectations
            hsPkgs.megaparsec
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.tagged;
        };
        tests = {
          tests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.hspec-megaparsec
              hsPkgs.megaparsec
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.tagged;
          };
        };
      };
    }