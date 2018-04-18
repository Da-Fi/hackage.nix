{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vector-mmap";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel Peebles 2010";
        maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
        author = "Daniel Peebles <pumpkingod@gmail.com>";
        homepage = "http://github.com/pumpkin/vector-mmap";
        url = "";
        synopsis = "Memory map immutable and mutable vectors";
        description = "Memory map immutable and mutable vectors.";
        buildType = "Simple";
      };
      components = {
        vector-mmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmap
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
        tests = {
          quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector-mmap
              hsPkgs.vector
              hsPkgs.QuickCheck
              hsPkgs.temporary
            ];
          };
        };
      };
    }