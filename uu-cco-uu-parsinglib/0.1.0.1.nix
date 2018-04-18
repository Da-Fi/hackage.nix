{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uu-cco-uu-parsinglib";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2014 Utrecht University";
        maintainer = "Atze Dijkstra <atze@uu.nl>";
        author = "Atze Dijkstra <atze@uu.nl>";
        homepage = "https://github.com/UU-ComputerScience/uu-cco";
        url = "";
        synopsis = "Utilities for compiler construction: Feedback wrapper around parser in uu-parsinglib";
        description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
        buildType = "Simple";
      };
      components = {
        uu-cco-uu-parsinglib = {
          depends  = [
            hsPkgs.base
            hsPkgs.uu-parsinglib
            hsPkgs.uu-cco
            hsPkgs.ListLike
          ];
        };
      };
    }