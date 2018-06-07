{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yarn-lock";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mail@profpatsch.de";
        author = "Profpatsch";
        homepage = "https://github.com/Profpatsch/yarn-lock#readme";
        url = "";
        synopsis = "Represent and parse yarn.lock files";
        description = "Types and parser for the lock file format of the npm successor yarn. All modules should be imported qualified.";
        buildType = "Simple";
      };
      components = {
        yarn-lock = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.megaparsec
            hsPkgs.protolude
            hsPkgs.text
          ];
        };
        tests = {
          yarn-lock-tests = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.either
              hsPkgs.megaparsec
              hsPkgs.neat-interpolation
              hsPkgs.protolude
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.yarn-lock
            ];
          };
        };
      };
    }