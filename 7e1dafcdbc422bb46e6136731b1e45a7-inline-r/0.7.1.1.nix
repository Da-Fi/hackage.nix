{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "inline-r";
        version = "0.7.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2015 Amgen, Inc.\nCopyright (c) 2015 Tweag I/O Limited.";
      maintainer = "Mathieu Boespflug <m@tweag.io>";
      author = "Mathieu Boespflug, Facundo Dominguez, Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "Seamlessly call R from Haskell and vice versa. No FFI required.";
      description = "For up to date Haddock documentation, please see\nhttp://www.stackage.org/package/inline-r.";
      buildType = "Simple";
    };
    components = {
      "inline-r" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.setenv)
          (hsPkgs.singletons)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.th-orphans)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."R");
        pkgconfig = pkgs.lib.optional (!system.isWindows) (pkgconfPkgs.libR);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ieee754)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.singletons)
            (hsPkgs.strict)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.vector)
          ];
        };
        "test-qq" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.tasty-hunit)
            (hsPkgs.singletons)
            (hsPkgs.text)
          ];
        };
        "test-shootout" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.silently)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
          ];
        };
      };
      benchmarks = {
        "bench-qq" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
          ];
        };
        "bench-hexp" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.singletons)
          ];
        };
      };
    };
  }