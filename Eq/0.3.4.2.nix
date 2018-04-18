{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "eq";
          version = "0.3.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/eq/";
        url = "";
        synopsis = "Leibnizian equality";
        description = "Leibnizian equality";
        buildType = "Simple";
      };
      components = {
        eq = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
            hsPkgs.groupoids
          ];
        };
      };
    }