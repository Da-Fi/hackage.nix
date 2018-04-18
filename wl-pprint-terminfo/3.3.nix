{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cursed = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wl-pprint-terminfo";
          version = "3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/wl-pprint-terminfo/";
        url = "";
        synopsis = "A color pretty printer with terminfo support";
        description = "A color pretty printer with terminfo support";
        buildType = "Custom";
      };
      components = {
        wl-pprint-terminfo = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.nats
            hsPkgs.semigroups
            hsPkgs.wl-pprint-extras
            hsPkgs.terminfo
            hsPkgs.transformers
          ];
        };
      };
    }