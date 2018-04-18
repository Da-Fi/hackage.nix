{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      testing = false;
      demos = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vty-ui";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <jtd@galois.com>";
        author = "Jonathan Daugherty <jtd@galois.com>";
        homepage = "http://codevine.org/vty-ui/";
        url = "";
        synopsis = "An interactive terminal user interface library\nfor Vty";
        description = "An extensible library of user interface widgets\nfor composing and laying out Vty user interfaces.\nThis library provides a collection of widgets for\nbuilding and composing interactive interactive,\nevent-driven terminal interfaces.  This library\nis intended to make non-trivial user interfaces\neasy to express and modify without having to\nworry about terminal size.";
        buildType = "Simple";
      };
      components = {
        vty-ui = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
            hsPkgs.containers
            hsPkgs.regex-pcre
            hsPkgs.regex-base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unix
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.array
          ];
        };
        exes = {
          vty-ui-tests = {
            depends  = [
              hsPkgs.QuickCheck
            ];
          };
          vty-ui-list-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
            ];
          };
          vty-ui-complex-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.regex-pcre
              hsPkgs.vty
            ];
          };
          vty-ui-dirbrowser-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
            ];
          };
          vty-ui-phoneinput-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
            ];
          };
          vty-ui-dialog-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
            ];
          };
        };
      };
    }