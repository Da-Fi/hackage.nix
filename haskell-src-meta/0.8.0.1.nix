{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-src-meta";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Parse source to template-haskell abstract syntax.";
        description = "The translation from haskell-src-exts abstract syntax\nto template-haskell abstract syntax isn't 100% complete yet.";
        buildType = "Simple";
      };
      components = {
        haskell-src-meta = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.pretty
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.th-orphans
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.safe;
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.haskell-src-meta
              hsPkgs.pretty
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }