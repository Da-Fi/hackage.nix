{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rdf4h";
          version = "3.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Calvin Smith, Rob Stewart, Slava Kravchenko";
        maintainer = "Rob Stewart <robstewart@gmail.com>";
        author = "Calvin Smith, Rob Stewart, Slava Kravchenko";
        homepage = "https://github.com/robstewart57/rdf4h";
        url = "";
        synopsis = "A library for RDF processing in Haskell";
        description = "'RDF for Haskell' is a library for working with RDF in Haskell.\nAt present it includes parsers and serializers for RDF in the N-Triples\nand Turtle, and parsing support for RDF/XML. It provides abilities such as querying\nfor triples  containing a particular subject, predicate, or object, or\nselecting triples that satisfy an arbitrary predicate function.";
        buildType = "Simple";
      };
      components = {
        rdf4h = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.HTTP
            hsPkgs.hxt
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.text-binary
            hsPkgs.utf8-string
            hsPkgs.hgal
            hsPkgs.parsers
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.network
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
        exes = {
          rdf4h = {
            depends  = [
              hsPkgs.base
              hsPkgs.rdf4h
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.network-uri
              hsPkgs.network
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
          };
        };
        tests = {
          test-rdf4h = {
            depends  = [
              hsPkgs.base
              hsPkgs.rdf4h
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.safe
              hsPkgs.network-uri
              hsPkgs.network
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
          };
        };
        benchmarks = {
          rdf4h-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.rdf4h
              hsPkgs.text
            ];
          };
        };
      };
    }