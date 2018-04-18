{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sendfile";
          version = "0.7.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Matthew Elder <matt@mattelder.org>";
        homepage = "http://patch-tag.com/r/mae/sendfile";
        url = "";
        synopsis = "A portable sendfile library";
        description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.\n\nCurrently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).";
        buildType = "Simple";
      };
      components = {
        sendfile = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
          ] ++ pkgs.lib.optional (system.isWindows && !_flags.portable) hsPkgs.Win32;
          libs = pkgs.lib.optional (system.isWindows && !_flags.portable) pkgs.mswsock;
        };
      };
    }