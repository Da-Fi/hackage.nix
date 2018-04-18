{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hcg-minus";
          version = "0.15";
        };
        license = "BSD-3-Clause";
        copyright = "(c) rohan drape, 2011-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hcg-minus";
        url = "";
        synopsis = "haskell cg (minus)";
        description = "cg (minus) library";
        buildType = "Simple";
      };
      components = {
        hcg-minus = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
          ];
        };
      };
    }