{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "angel";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Xavier <michael@michaelxavier.net>";
        author = "Jamie Turner";
        homepage = "http://github.com/MichaelXavier/Angel";
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
              hsPkgs.configurator
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.base
              hsPkgs.process
              hsPkgs.mtl
              hsPkgs.configurator
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }