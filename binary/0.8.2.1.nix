{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "binary";
          version = "0.8.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin, Don Stewart <dons00@gmail.com>";
        author = "Lennart Kolmodin <kolmodin@gmail.com>";
        homepage = "https://github.com/kolmodin/binary";
        url = "";
        synopsis = "Binary serialisation for Haskell values using lazy ByteStrings";
        description = "Efficient, pure binary serialisation using lazy ByteStrings.\nHaskell values may be encoded to and from binary formats,\nwritten to disk as binary, or sent over the network.\nThe format used can be automatically generated, or\nyou can choose to implement a custom format if needed.\nSerialisation speeds of over 1 G\\/sec have been observed,\nso this library should be suitable for high performance\nscenarios.";
        buildType = "Simple";
      };
      components = {
        binary = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.array
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim;
        };
        tests = {
          qc = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.containers
            ];
          };
          read-write-file = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.containers
            ];
          };
          get = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.containers
            ];
          };
          generics-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.tar
              hsPkgs.unordered-containers
              hsPkgs.zlib
              hsPkgs.criterion
              hsPkgs.array
              hsPkgs.containers
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim;
          };
          builder = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }