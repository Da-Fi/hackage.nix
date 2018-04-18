{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "speculation";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader";
        url = "";
        synopsis = "A framework for safe, programmable, speculative parallelism";
        description = "A framework for safe, programmable, speculative parallelism, loosely based on\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>";
        buildType = "Simple";
      };
      components = {
        speculation = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.parallel
          ];
        };
      };
    }