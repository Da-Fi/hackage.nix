{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      static = false;
      relocatable = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cryptol";
          version = "2.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2017 Galois Inc.";
        maintainer = "cryptol@galois.com";
        author = "Galois, Inc.";
        homepage = "http://www.cryptol.net/";
        url = "";
        synopsis = "Cryptol: The Language of Cryptography";
        description = "Cryptol is a domain-specific language for specifying cryptographic algorithms. A Cryptol implementation of an algorithm resembles its mathematical specification more closely than an implementation in a general purpose language. For more, see <http://www.cryptol.net/>.";
        buildType = "Simple";
      };
      components = {
        cryptol = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gitrev
            hsPkgs.GraphSCC
            hsPkgs.heredoc
            hsPkgs.monad-control
            hsPkgs.monadLib
            hsPkgs.old-time
            hsPkgs.presburger
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.sbv
            hsPkgs.smtLib
            hsPkgs.simple-smt
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.tf-random
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.utf8-string
            hsPkgs.mtl
            hsPkgs.time
          ];
        };
        exes = {
          cryptol = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.cryptol
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.monadLib
              hsPkgs.monad-control
              hsPkgs.process
              hsPkgs.random
              hsPkgs.sbv
              hsPkgs.tf-random
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          cryptol-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.cryptol
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.sbv
              hsPkgs.text
            ];
          };
        };
      };
    }