{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-dot";
          version = "0.12";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-dot";
        url = "";
        synopsis = "haskell supercollider graph drawing";
        description = "dot format graph generator for SuperCollider\nunit generator graphs constructed using hsc3.";
        buildType = "Simple";
      };
      components = {
        hsc3-dot = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hsc3
            hsPkgs.process
          ];
        };
      };
    }