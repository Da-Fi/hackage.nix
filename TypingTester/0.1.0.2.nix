{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "TypingTester";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "https://github.com/xpika/typingtester";
        url = "";
        synopsis = "Command Line Typing speed tester";
        description = "Prompts the user to type anything they wish. Notifies them of how long it took.";
        buildType = "Simple";
      };
      components = {
        exes = {
          typingtester = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.directory
            ];
          };
        };
      };
    }