{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "steeloverseer";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "efsubenovex@gmail.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/steeloverseer";
        url = "";
        synopsis = "A file watcher.";
        description = "A command line tool that responds to filesystem events. Allows the user to automatically execute commands after files are added or updated. Watches files using regular expressions.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sos = {
            depends  = [
              hsPkgs.base
              hsPkgs.fsnotify
              hsPkgs.filepath
              hsPkgs.ansi-terminal
              hsPkgs.process
              hsPkgs.time
              hsPkgs.regex-tdfa
              hsPkgs.unix
            ];
          };
        };
      };
    }