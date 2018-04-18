{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-succinct";
          version = "0.0.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-succinct#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-succinct = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.hw-bits
            hsPkgs.hw-conduit
            hsPkgs.hw-parser
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect
            hsPkgs.mono-traversable
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          hw-succinct-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-diagnostics
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-succinct
              hsPkgs.mmap
              hsPkgs.resourcet
              hsPkgs.vector
            ];
          };
        };
        tests = {
          hw-succinct-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-succinct
              hsPkgs.mmap
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-succinct
              hsPkgs.mmap
              hsPkgs.resourcet
              hsPkgs.vector
            ];
          };
        };
      };
    }