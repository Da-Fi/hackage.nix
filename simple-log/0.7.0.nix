{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-log";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexandr `Voidex` Ruchkin";
        homepage = "http://github.com/mvoidex/simple-log";
        url = "";
        synopsis = "Simple log for Haskell";
        description = "Log library for Haskell with removing unnecessary traces";
        buildType = "Simple";
      };
      components = {
        simple-log = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.base-unicode-symbols
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.hformat
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.SafeSemaphore
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.simple-log
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }