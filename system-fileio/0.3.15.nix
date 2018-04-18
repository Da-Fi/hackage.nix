{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "system-fileio";
          version = "0.3.15";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-filesystem/";
        url = "";
        synopsis = "Consistent filesystem interaction across GHC versions";
        description = "THIS PACKAGE IS DEPRECATED, AND NO LONGER MAINTAINED. Users of\nGHC >= 7.4 should use the native file path handling, which now\nsupports paths containing arbitrary bytes. Users of older GHC\nversions should upgrade to GHC >= 7.4.\n\n\n\n\nThis is a small wrapper around the \\\"directory\\\", \\\"unix\\\", and \\\"Win32\\\"\npackages, for use with \\\"system-filepath\\\". It provides a consistent API\nto the various versions of these packages distributed with different\nversions of GHC.\n\nIn particular, this library supports working with POSIX files that have\npaths which can't be decoded in the current locale encoding.";
        buildType = "Simple";
      };
      components = {
        system-fileio = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.time
          ] ++ (if system.isWindows
            then [
              hsPkgs.Win32
              hsPkgs.directory
            ]
            else [ hsPkgs.unix ]);
        };
        tests = {
          filesystem_tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.chell
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }