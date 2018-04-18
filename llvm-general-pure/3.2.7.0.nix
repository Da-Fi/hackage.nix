{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "llvm-general-pure";
          version = "3.2.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "Benjamin S. Scarlet 2013";
        maintainer = "Benjamin S. Scarlet <fgthb0@greynode.net>";
        author = "Benjamin S.Scarlet <fgthb0@greynode.net>";
        homepage = "";
        url = "";
        synopsis = "Pure Haskell LLVM functionality (no FFI).";
        description = "llvm-general-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.\nIt includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-general package\nbuilds on this one with FFI bindings to LLVM, but llvm-general-pure does not require LLVM to be available.\n\nFor haddock, see <http://bscarlet.github.io/llvm-general/3.4.0.0/doc/html/llvm-general-pure/index.html>.";
        buildType = "Custom";
      };
      components = {
        llvm-general-pure = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.array
            hsPkgs.setenv
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.llvm-general-pure
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
      };
    }