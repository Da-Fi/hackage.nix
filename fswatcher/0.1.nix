{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fswatcher";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ehamberg@gmail.com";
        author = "Erlend Hamberg";
        homepage = "http://www.github.com/ehamberg/fswatcher/";
        url = "";
        synopsis = "Watch a file/directory and run a command it is modified";
        description = "A simple program that watches a file or a directory and\nruns a given command whenever the file or a file within the\ndirectory is changed.";
        buildType = "Simple";
      };
      components = {
        exes = {
          fswatcher = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.fsnotify
              hsPkgs.system-filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }