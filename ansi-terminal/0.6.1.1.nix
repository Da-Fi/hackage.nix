{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ansi-terminal";
          version = "0.6.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Max Bolingbroke";
        homepage = "https://github.com/feuerbach/ansi-terminal";
        url = "";
        synopsis = "Simple ANSI terminal support, with Windows compatibility";
        description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output showing or hiding the cursor, and\nchanging the title. Compatible with Windows and those Unixes with ANSI terminals, but only GHC is supported as a compiler.";
        buildType = "Simple";
      };
      components = {
        ansi-terminal = {
          depends  = (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]) ++ [
            hsPkgs.base
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        exes = {
          ansi-terminal-example = {
            depends  = (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]) ++ [
              hsPkgs.base
            ];
            libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
          };
        };
      };
    }