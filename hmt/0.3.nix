{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmt";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hmt";
        url = "";
        synopsis = "Haskell Music Theory";
        description = "Haskell music theory library";
        buildType = "Simple";
      };
      components = {
        hmt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.multiset-comb
            hsPkgs.parsec
            hsPkgs.permutation
            hsPkgs.split
          ];
        };
      };
    }