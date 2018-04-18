{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "optimusprime";
          version = "0.0.1.20091113";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jason Reich <jason@cs.york.ac.uk>";
        author = "Jason Reich <jason@cs.york.ac.uk>";
        homepage = "http://optimusprime.posterous.com/";
        url = "";
        synopsis = "A supercompiler for f-lite";
        description = "A supercompiler for f-lite";
        buildType = "Simple";
      };
      components = {
        exes = {
          optimusprime = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.flite
              hsPkgs.uniplate
              hsPkgs.wl-pprint
              hsPkgs.mtl
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.haskell98
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }