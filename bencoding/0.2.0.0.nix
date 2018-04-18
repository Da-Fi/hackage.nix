{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bencoding";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013, Sam T.";
        maintainer = "Sam T. <pxqr.sta@gmail.com>";
        author = "Sam T.";
        homepage = "https://github.com/cobit/bencoding";
        url = "";
        synopsis = "A library for encoding and decoding of BEncode data.";
        description = "A library for encoding and decoding of BEncode data.\n\n[/Release notes/]\n\n* /0.1.0.0:/ Initial version.\n\n* /0.2.0.0:/ Added default decoders/encoders using GHC Generics.";
        buildType = "Simple";
      };
      components = {
        bencoding = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.pretty
          ];
        };
        exes = {
          pp = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bencoding
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.bencoding
            ];
          };
        };
        benchmarks = {
          bench-comparison = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.bencoding
              hsPkgs.bencode
              hsPkgs.AttoBencode
            ];
          };
        };
      };
    }