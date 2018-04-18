{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shared-buffer";
          version = "0.1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "";
        url = "";
        synopsis = "A circular buffer built on shared memory";
        description = "A circular buffer built on shared memory";
        buildType = "Simple";
      };
      components = {
        shared-buffer = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.bytestring
          ];
        };
        tests = {
          shared-buffer-tests = {
            depends  = [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.shared-buffer
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.bytestring
            ];
          };
        };
      };
    }