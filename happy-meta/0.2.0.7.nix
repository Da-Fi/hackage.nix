{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "happy-meta";
          version = "0.2.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonas.duregard@gmail.com";
        author = "Jonas Duregard";
        homepage = "";
        url = "";
        synopsis = "Quasi-quoter for Happy parsers";
        description = "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.";
        buildType = "Custom";
      };
      components = {
        happy-meta = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }