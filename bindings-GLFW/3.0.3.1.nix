{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      macosxusechdir = true;
      macosxusemenubar = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-GLFW";
          version = "3.0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to GLFW OpenGL library";
        description = "Low-level bindings to GLFW (<http://www.glfw.org/>), an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to GLFW 3.0.3, released 2013-09-24\n(<http://www.glfw.org/Version-3.0.3-released.html>\n<http://www.glfw.org/changelog.html>).\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.0.x. Please see the transition guide\n(<http://www.glfw.org/docs/3.0/moving.html>).";
        buildType = "Simple";
      };
      components = {
        bindings-GLFW = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = optionals (system.isLinux || system.isFreebsd) [
            pkgs.GL
            pkgs.X11
            pkgs.Xi
            pkgs.Xrandr
            pkgs.Xxf86vm
            pkgs.pthread
          ] ++ optionals system.isWindows [
            pkgs.opengl32
            pkgs.Gdi32
          ];
          frameworks = optionals system.isOsx [
            pkgs.AGL
            pkgs.Cocoa
            pkgs.OpenGL
            pkgs.IOKit
            pkgs.CoreFoundation
            pkgs.CoreVideo
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bindings-GLFW
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
            frameworks = [
              pkgs.AGL
              pkgs.Cocoa
              pkgs.OpenGL
              pkgs.IOKit
              pkgs.CoreFoundation
              pkgs.CoreVideo
            ];
          };
        };
      };
    }