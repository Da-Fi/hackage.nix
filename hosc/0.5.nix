{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hosc";
          version = "0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2008";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/269573/";
        url = "";
        synopsis = "Haskell Open Sound Control";
        description = "hosc provides Sound.OpenSoundControl, a haskell\nmodule implementing a subset of the Open Sound\nControl byte protocol.";
        buildType = "Simple";
      };
      components = {
        hosc = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.time
          ];
        };
      };
    }