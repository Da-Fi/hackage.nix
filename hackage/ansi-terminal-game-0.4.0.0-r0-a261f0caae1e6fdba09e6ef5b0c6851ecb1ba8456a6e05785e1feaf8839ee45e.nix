{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ansi-terminal-game"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2017-2019 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "none-yet";
      url = "";
      synopsis = "sdl-like functions for terminal applications, based on\nansi-terminal";
      description = "Library which aims to replicate standard 2d game\nfunctions (blit, ticks, timers, etc.) in a terminal\nsetting.\nAims to be cross compatible (based on \"ansi-terminal\",\nno unix-only dependencies), practical.\nSee example folder for some minimal programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.clock)
          (hsPkgs.exceptions)
          (hsPkgs.linebreak)
          (hsPkgs.mintty)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
          (hsPkgs.terminal-size)
          (hsPkgs.timers-tick)
          ];
        };
      exes = {
        "alone" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal-game)
            ];
          };
        "alone-playback" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal-game)
            (hsPkgs.temporary)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.clock)
            (hsPkgs.exceptions)
            (hsPkgs.linebreak)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.split)
            (hsPkgs.terminal-size)
            (hsPkgs.timers-tick)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }