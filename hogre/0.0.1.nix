{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hogre";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Antti Salonen 2009";
        maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
        author = "Antti Salonen<ajsalonen at gmail dot com>";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to a subset of OGRE";
        description = "This package contains bindings to a subset of OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
        buildType = "Simple";
      };
      components = {
        hogre = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
          libs = [
            pkgs.CEGUIOgreRenderer
            pkgs.OgreMain
            pkgs.CEGUIBase
          ];
        };
      };
    }