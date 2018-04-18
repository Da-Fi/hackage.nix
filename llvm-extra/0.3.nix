{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llvm-extra";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/llvm-extra/";
        url = "";
        synopsis = "Utility functions for the llvm interface";
        description = "The Low-Level Virtual-Machine is a compiler back-end with optimizer.\nYou may also call it a high-level portable assembler.\nThis package provides various utility functions\nfor the Haskell interface to LLVM, for example:\n\n* arithmetic operations with better type inference than the @llvm@ interface\nin \"LLVM.Extra.Arithmetic\",\n\n* a type class for loading and storing sets of values with one command (macro)\nin \"LLVM.Extra.Memory\",\n\n* support instance declarations of LLVM classes\nin \"LLVM.Extra.Class\",\n\n* handling of termination by a custom monad on top of @CodeGenFunction@\nin \"LLVM.Extra.MaybeContinuation\"\n\n* various kinds of loops (while) and condition structures (if-then-else)\nin \"LLVM.Extra.Control\"\n\n* automatic adaption to target specific extensions,\ncurrently used for access of vector operations\nthat are specific to an SSE level on x86 processors\nin \"LLVM.Extra.Extension\"\n(On x86 architectures we depend on the cpuid package\nthat is needed for automatic detection of available features.)\n\n* advanced vector operations\nsuch as sum of all vector elements, cumulative sum,\nfloor, non-negative fraction, absolute value\nin \"LLVM.Extra.Vector\"\n\n* type classes for handling scalar and vector operations\nin a uniform way\nin \"LLVM.Extra.ScalarOrVector\"\n\n* a Makefile and a description\nof how to run LLVM code from within GHCi.";
        buildType = "Simple";
      };
      components = {
        llvm-extra = {
          depends  = [
            hsPkgs.llvm
            hsPkgs.type-level
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.base
          ] ++ pkgs.lib.optional system.isI386 hsPkgs.cpuid;
        };
        exes = { tone-llvm = {}; };
      };
    }