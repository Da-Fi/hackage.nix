{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "xhb";
          version = "0.1.2009.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "See CONTRIBUTORS file";
        homepage = "http://community.haskell.org/~aslatter/code/xhb";
        url = "";
        synopsis = "X Haskell Bindings";
        description = "Provides low-level bindings to the X11 protocol.\n\nSimilar to XCB - the X C Bindings.\n\nThis library is based on version 1.3 of the xcb-proto\npackage.  See http:\\/\\/xcb.freedesktop.org\\/XmlXcb\\/ and\nhttp:\\/\\/xcb.freedesktop.org\\/dist\\/ .";
        buildType = "Simple";
      };
      components = {
        xhb = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.Xauth
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.network
            hsPkgs.byteorder
          ];
        };
      };
    }