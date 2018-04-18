{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "map-syntax";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "";
        url = "";
        synopsis = "Syntax sugar for defining maps";
        description = "Haskell's canonical list of tuples syntax for defining maps is not very\nconvenient and also has ambiguous semantics.  This package leverages do\nnotation to create a lighter syntax that makes semantics explicit and also\nallows the option of fail-fast handling of duplicate keys.";
        buildType = "Simple";
      };
      components = {
        map-syntax = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }