{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsseccomp";
          version = "0.2.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "tehunger@gmail.com";
        author = "Tom Hunger, Cornelius Diekmann";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to libseccomp";
        description = "Bindings to libseccomp. See \"System.Linux.Seccomp\" for docs.";
        buildType = "Simple";
      };
      components = {
        hsseccomp = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.seccomp ];
        };
        tests = {
          seccomp-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.hsseccomp
              hsPkgs.unix
            ];
          };
        };
      };
    }