{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usepkgconfig = false;
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml-datamodel";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marcin.jan.mrotek@gmail.com";
        author = "Marcin Mrotek";
        homepage = "https://github.com/marcinmrotek/hsqml-datamodel";
        url = "";
        synopsis = "HsQML (Qt5) data model.";
        description = "HsQML (Qt5) data model. Use any collection (actually, any (Int -> IO a) action) of single constructor data types as a model for use with QML views.";
        buildType = "Custom";
      };
      components = {
        hsqml-datamodel = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsqml
            hsPkgs.text
            hsPkgs.template-haskell
          ];
          libs = if system.isWindows && !_flags.usepkgconfig
            then [
              pkgs.Qt5Core
              pkgs.Qt5Gui
              pkgs.Qt5Widgets
              pkgs.Qt5Qml
              pkgs.Qt5Quick
              pkgs."stdc++"
            ]
            else [ pkgs."stdc++" ];
          frameworks = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig) && (system.isOsx && !_flags.usepkgconfig)) [
            pkgs.QtCore
            pkgs.QtGui
            pkgs.QtWidgets
            pkgs.QtQml
            pkgs.QtQuick
          ];
          pkgconfig = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig) && !(system.isOsx && !_flags.usepkgconfig)) [
            pkgconfPkgs.Qt5Core
            pkgconfPkgs.Qt5Gui
            pkgconfPkgs.Qt5Widgets
            pkgconfPkgs.Qt5Qml
            pkgconfPkgs.Qt5Quick
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }