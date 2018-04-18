{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tabloid";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sven.heyll@gmail.com";
        author = "Sven Heyll";
        homepage = "";
        url = "";
        synopsis = "View the output of shell commands in a table";
        description = "GUI for shell commands and log analysis";
        buildType = "Simple";
      };
      components = {
        exes = {
          tabloid = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.regex-base
              hsPkgs.regex-posix
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.containers
            ];
          };
        };
      };
    }