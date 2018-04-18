{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "angel";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jamie@bu.mp";
        author = "Jamie Turner";
        homepage = "http://github.com/jamwt/Angel";
        url = "";
        synopsis = "Process management and supervision daemon";
        description = "@angel@ is a daemon that runs and monitors other processes.  It\nis similar to djb's `daemontools` or the Ruby project `god`.\n\nIt's goals are to keep a set of services running, and to facilitate\nthe easy configuration and restart of those services.\nSee the homepage for documentation.";
        buildType = "Simple";
      };
      components = {
        exes = {
          angel = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.mtl
              hsPkgs.MissingH
              hsPkgs.parsec
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.unix
              hsPkgs.old-time
              hsPkgs.old-locale
            ];
          };
        };
      };
    }