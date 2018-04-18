{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "posix-timer";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/posix-timer";
        url = "";
        synopsis = "Bindings to POSIX clock and timer functions.";
        description = "This package provides bindings to POSIX clock and timer functions.";
        buildType = "Simple";
      };
      components = {
        posix-timer = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.transformers-base
          ];
        };
      };
    }