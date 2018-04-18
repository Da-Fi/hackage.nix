{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "foldl-transduce";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Daniel Diaz";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Diaz";
        homepage = "";
        url = "";
        synopsis = "Transducers for folds from foldl.";
        description = "Stateful transducers and streaming-preserving grouping operations for the folds in the foldl package.";
        buildType = "Simple";
      };
      components = {
        foldl-transduce = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.semigroupoids
            hsPkgs.foldl
            hsPkgs.comonad
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.foldl
              hsPkgs.foldl-transduce
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.foldl
              hsPkgs.foldl-transduce
            ];
          };
        };
      };
    }