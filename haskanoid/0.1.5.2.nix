{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      wiimote = true;
      kinect = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskanoid";
          version = "0.1.5.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez and Henrik Nilsson";
        homepage = "http://github.com/ivanperez-keera/haskanoid";
        url = "";
        synopsis = "A breakout game written in Yampa using SDL";
        description = "An arkanoid game featuring SDL graphics and sound, and\nWiimote & Kinect support, implemented using Yampa.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskanoid = {
            depends  = ([
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.MissingH
              hsPkgs.Yampa
              hsPkgs.SDL
              hsPkgs.SDL-image
              hsPkgs.SDL-mixer
              hsPkgs.SDL-ttf
              hsPkgs.IfElse
            ] ++ pkgs.lib.optional _flags.wiimote hsPkgs.hcwiid) ++ optionals _flags.kinect [
              hsPkgs.freenect
              hsPkgs.vector
            ];
          };
        };
      };
    }