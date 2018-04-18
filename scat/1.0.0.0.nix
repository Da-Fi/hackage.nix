{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "scat";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "romain.edelmann@gmail.com";
        author = "Romain Edelmann";
        homepage = "https://github.com/redelmann/scat";
        url = "";
        synopsis = "Generates unique passwords for various websites from a single password.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          scat = {
            depends  = [
              hsPkgs.base
              hsPkgs.scrypt
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }