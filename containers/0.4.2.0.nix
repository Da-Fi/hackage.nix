{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "containers";
          version = "0.4.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fox@ucw.cz";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Assorted concrete container types";
        description = "This package contains efficient general-purpose implementations\nof various basic immutable container types.  The declared cost of\neach operation is either worst-case or amortized, but remains\nvalid even if structures are shared.";
        buildType = "Simple";
      };
      components = {
        containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.deepseq
          ];
        };
      };
    }