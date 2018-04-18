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
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to GLFW OpenGL library";
        description = "Low-level bindings to <http://www.glfw.org/ GLFW>, an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to\n<http://www.glfw.org/Version-3.0.1-released.html GLFW 3.0.1, released 2013-06-17>.\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee <http://hackage.haskell.org/package/GLFW-b GLFW-b>.\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.0.x. Please see the\n<http://www.glfw.org/docs/3.0/moving.html transition guide>.";
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
          };
        };
      };
    }