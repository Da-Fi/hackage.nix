{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      library-only = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hstox";
          version = "0.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "© 2016 iphy";
        maintainer = "iphy";
        author = "iphy";
        homepage = "http://hstox.github.io";
        url = "";
        synopsis = "A Tox protocol implementation in Haskell";
        description = "A Tox protocol implementation in Haskell";
        buildType = "Simple";
      };
      components = {
        "hstox" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-msgpack
            hsPkgs.integer-gmp
            hsPkgs.iproute
            hsPkgs.network
            hsPkgs.network-msgpack-rpc
            hsPkgs.saltine
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!_flags.library-only) hsPkgs.hspec;
        };
        exes = {
          "tox-spectest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hstox
              hsPkgs.process
            ];
          };
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.hstox
            ];
          };
        };
      };
    }