{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "maxsharing";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/maxsharing/";
        url = "";
        synopsis = "Maximal sharing of terms in the lambda calculus with letrec";
        description = "Parses a lambda-letrec term; transforms it into a first-order\nterm graph representation; minimises the graph by bisimulation\ncollapse; reads back a lambda-letrec term which has the same\nunfolding as the original term but is more (maximally) compact.\nIf executable \"dot\" from graphviz is available, the graphs are\ndisplayed (tested for Linux). The approach is described in an\nICFP-paper (http://dx.doi.org/10.1145/2628136.2628148) and an\nextended version thereof (http://arxiv.org/abs/1401.1460).";
        buildType = "Custom";
      };
      components = {
        exes = {
          maxsharing = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.parsec
              hsPkgs.IndentParser
              hsPkgs.containers
              hsPkgs.containers-unicode-symbols
              hsPkgs.mtl
              hsPkgs.uuagc-cabal
              hsPkgs.uuagc
              hsPkgs.HaLeX
              hsPkgs.boxes
              hsPkgs.process
            ];
          };
        };
      };
    }