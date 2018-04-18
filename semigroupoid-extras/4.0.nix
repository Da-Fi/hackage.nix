{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "semigroupoid-extras";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/semigroupoid-extras";
        url = "";
        synopsis = "This package has been absorbed into semigroupoids 4.0";
        description = "This package has been absorbed into semigroupoids 4.0";
        buildType = "Simple";
      };
      components = {
        semigroupoid-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
          ];
        };
      };
    }